export interface CallerIDPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
