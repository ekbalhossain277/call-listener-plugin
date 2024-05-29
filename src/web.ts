import { WebPlugin } from '@capacitor/core';

import type { CallerIDPlugin } from './definitions';

export class CallerIDWeb extends WebPlugin implements CallerIDPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
