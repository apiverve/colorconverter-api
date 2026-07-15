declare module '@apiverve/colorconverter' {
  export interface colorconverterOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface colorconverterResponse {
    status: string;
    error: string | null;
    data: ColorConverterData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface ColorConverterData {
      hex:      null | string;
      rgb:      null | string;
      hsl:      null | string;
      cmyk:     null | string;
      ansi16:   number | null;
      name:     null | string;
      channels: Channels;
  }
  
  interface Channels {
      rgbChannels:  number | null;
      cmykChannels: number | null;
      ansiChannels: number | null;
      hexChannels:  number | null;
      hslChannels:  number | null;
  }

  export default class colorconverterWrapper {
    constructor(options: colorconverterOptions);

    execute(callback: (error: any, data: colorconverterResponse | null) => void): Promise<colorconverterResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: colorconverterResponse | null) => void): Promise<colorconverterResponse>;
    execute(query?: Record<string, any>): Promise<colorconverterResponse>;
  }
}
