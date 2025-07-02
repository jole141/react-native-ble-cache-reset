import BleCacheReset from './NativeBleCacheReset';

export async function refreshGatt(deviceId: string): Promise<void> {
  try {
    await BleCacheReset.refreshGatt(deviceId);
    console.log('Refresh successful');
  } catch (error) {
    console.error('Refresh failed', error);
  }
}

export async function ping(): Promise<void> {
  try {
    const response = await BleCacheReset.ping();
    console.log('Native module responded:', response);
  } catch (e) {
    console.error('Native module error:', e);
  }
}
