import * as React from 'react';

import { StyleSheet, View, Text } from 'react-native';
import { getAppVersion } from 'react-native-app-version';

export default function App() {
  const [appVersion, setAppVersion] = React.useState<string | undefined>();

  React.useEffect(() => {
    getAppVersion().then(setAppVersion);
  }, []);

  return (
    <View style={styles.container}>
      <Text>App Version: {appVersion}</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
});
