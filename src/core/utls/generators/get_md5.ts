import { createHash } from 'crypto';

export function getMd5(data: string): string {
  return createHash('md5').update(data).digest('hex').toLowerCase();
}
