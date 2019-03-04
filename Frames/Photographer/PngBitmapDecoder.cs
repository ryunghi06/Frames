using System.IO;

namespace Frames
{
    internal class PngBitmapDecoder
    {
        private Stream imageStreamSource;
        private object preservePixelFormat;
        private object @default;

        public PngBitmapDecoder(Stream imageStreamSource, object preservePixelFormat, object @default)
        {
            this.imageStreamSource = imageStreamSource;
            this.preservePixelFormat = preservePixelFormat;
            this.@default = @default;
        }
    }
}