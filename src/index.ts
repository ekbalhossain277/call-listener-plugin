import { registerPlugin } from '@capacitor/core';

import type { CallerIDPlugin } from './definitions';

const CallerID = registerPlugin<CallerIDPlugin>('CallerID', {
  web: () => import('./web').then(m => new m.CallerIDWeb()),
});

export * from './definitions';
export { CallerID };
