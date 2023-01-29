
#include "ReShade.fxh"

float4 main(float2 texcoord : TEXCOORD) : COLOR
{
    texcoord.y = 1 - texcoord.y;
    
    // Sample the texture at the given texcoord
    float4 color = tex2D(tex, texcoord);

    // Return the final color
    return color;
}

technique UpsideDown
{
	pass
	{
		VertexShader = PostProcessVS;
		PixelShader = TintPass;
	}
}