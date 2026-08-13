Includes = {
}

PixelShader =
{
	Samplers =
	{
		TextureOne =
		{
			Index = 0
			MagFilter = "Point"
			MinFilter = "Point"
			MipFilter = "None"
			AddressU = "Wrap"
			AddressV = "Wrap"
		}
		TextureTwo =
		{
			Index = 1
			MagFilter = "Point"
			MinFilter = "Point"
			MipFilter = "None"
			AddressU = "Wrap"
			AddressV = "Wrap"
		}
	}
}

VertexStruct VS_INPUT
{
	float4 vPosition : POSITION;
	float2 vTexCoord : TEXCOORD0;
};

VertexStruct VS_OUTPUT
{
	float4 vPosition : PDX_POSITION;
	float2 vTexCoord0 : TEXCOORD0;
};

ConstantBuffer( 0, 0 )
{
	float4x4 WorldViewProjectionMatrix;
	float4 vFirstColor;
	float4 vSecondColor;
	float CurrentState;
};

VertexShader =
{
	MainCode VertexShader
	[[
		VS_OUTPUT main(const VS_INPUT v) {
			VS_OUTPUT Out;
			Out.vPosition = mul(WorldViewProjectionMatrix, v.vPosition);
			Out.vTexCoord0 = v.vTexCoord;
			return Out;
		}
	]]
}

PixelShader =
{
	MainCode PixelColor
	[[
		float4 main(VS_OUTPUT v) : PDX_COLOR {
			if (v.vTexCoord0.x <= CurrentState / 2.f)
				return vFirstColor;
			return vSecondColor;
		}
	]]

	MainCode PixelTexture
	[[
		float4 main(VS_OUTPUT v) : PDX_COLOR {
			float startY = 0.5f / 20.f;
			float endY = CurrentState / 20.f;
			float y = v.vTexCoord0.y / 20.f;
			float denominator = sqrt((endY - startY) * (endY - startY) + 1.f);
			float d0 = abs((endY - startY) * (v.vTexCoord0.x - 0.04f) - y + startY) / denominator;
			float d1 = abs((endY - startY) * v.vTexCoord0.x - y + startY) / denominator;
			float d2 = abs((endY - startY) * (v.vTexCoord0.x + 0.04f) - y + startY) / denominator;
			float d3 = abs((endY - startY) * (v.vTexCoord0.x + 0.08f) - y + startY) / denominator;
			if (d0 < 0.0004f || d1 < 0.0004f || d2 < 0.0004f || d3 < 0.0004f)
				return tex2D(TextureOne, v.vTexCoord0.xy);
			return tex2D(TextureTwo, v.vTexCoord0.xy);
		}
	]]
}

BlendState BlendState
{
	BlendEnable = yes
	SourceBlend = "SRC_ALPHA"
	DestBlend = "INV_SRC_ALPHA"
}

Effect Color
{
	VertexShader = "VertexShader"
	PixelShader = "PixelColor"
}

Effect Texture
{
	VertexShader = "VertexShader"
	PixelShader = "PixelTexture"
}
