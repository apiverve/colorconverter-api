using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.ColorConverter
{
    /// <summary>
    /// Query options for the Color Converter API
    /// </summary>
    public class ColorConverterQueryOptions
    {
        /// <summary>
        /// The color in hexadecimal format (e.g., FF0000). Make sure you ommit the #
        /// </summary>
        [JsonProperty("hex")]
        public string Hex { get; set; }
    }
}
