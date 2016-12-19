module Christmasify
  module Rails
    module Helper
      # @example
      #   <%= snow(container, snowflakes: {count: 100, color: #fff}) %>
      def snow(options={})
        "
        <script type=\"x-shader/x-vertex\" id=\"christmasify_vertex\">
          uniform float radiusX;
          uniform float radiusZ;
          uniform float size;
          uniform float scale;
          uniform float height;
          uniform float elapsedTime;
          uniform float speedH;
          uniform float speedV;

          void main() {
            vec3 pos = position;
            pos.x += cos((elapsedTime + position.z) * 0.25 * speedH) * radiusX;
            pos.y = mod(pos.y - elapsedTime * speedV, height);
            pos.z += sin((elapsedTime + position.x) * 0.25 * speedH) * radiusZ;

            vec4 mvPosition = modelViewMatrix * vec4( pos, 1.0 );

            gl_PointSize = size * ( scale / length( mvPosition.xyz ) );

            gl_Position = projectionMatrix * mvPosition;
          }
        </script>

        <script type=\"x-shader/x-fragment\" id=\"christmasify_fragment\">
          uniform vec3 color;
          uniform float opacity;
          uniform sampler2D texture;

          void main() {
            vec4 texColor = texture2D( texture, gl_PointCoord );
            gl_FragColor = texColor * vec4( color, opacity );
          }
        </script>

        <script type=\"text/javascript\">

        </script>
        ".html_safe
      end

      def santas_hat
        content_tag :div, "", class: "santas-hat"
      end
    end
  end
end
