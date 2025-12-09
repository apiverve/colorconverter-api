declare module '@apiverve/colorconverter' {
  export interface colorconverterOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface colorconverterResponse {
    status: string;
    error: string | null;
    data: ColorConverterData;
    code?: number;
  }


  interface ColorConverterData {
      hex:      string;
      rgb:      string;
      hsl:      string;
      cmyk:     string;
      ansi16:   number;
      name:     string;
      channels: Channels;
  }
  
  interface Channels {
      rgbChannels:  number;
      cmykChannels: number;
      ansiChannels: number;
      hexChannels:  number;
      hslChannels:  number;
  }

  export default class colorconverterWrapper {
    constructor(options: colorconverterOptions);

    execute(callback: (error: any, data: colorconverterResponse | null) => void): Promise<colorconverterResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: colorconverterResponse | null) => void): Promise<colorconverterResponse>;
    execute(query?: Record<string, any>): Promise<colorconverterResponse>;
  }
}
