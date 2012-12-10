android-archetypes
==================

This projects provides several Maven archetypes for Android. Those archetypes allows to quickly bootstrap a Maven project
to develop an android application.

These artifacts are based on the android-maven-plugin (http://code.google.com/p/maven-android-plugin/). It currently uses the 3.4.0 version.

The android-novoda archetype
--------------------------------
The archetype is based on experiences and setup used by [Novoda](http://www.novoda.com). This archetype will provided you with following modules:

    app - main Android structure holder dependent on core
    core - this is plain Java "zone", stuff that can be easier tested with JUnit and mocked with various frameworks (we try this section to be as much independent from Android, but sometimes some stuff sneak inside)
    instrumentation  - integration tests using instrumentation, Robolectric, out-of-box setup for Emma reports you can use on your Jenkins CI etc

To initiate an android project use:

    mvn archetype:generate \
      -DarchetypeArtifactId=android-novoda \
      -DarchetypeGroupId=com.novoda \
      -DarchetypeVersion=1.0.0-SNAPSHOT \
      -DgroupId=your.company \
      -DartifactId=my-android-application

You can also set three optional properties :

* The created 'package' with '-Dpackage=your.company.android'. By default it uses the given groupId.
* The targeted Android platform with '-Dplatform=7'. The Android SDK version will be automatically fetched to fit the corresponding API level. Available API Level are 3, 4, 7, 8, 9, 10, 14 and 16. By default, it uses 16 (android 4.1.1.4).

### Warning
'-Demulator=my-avd' is not supported due different structure of archetype from above listed

Once generated, the application is ready to be built and deployed (you may need to configure your ANDROID_HOME environment variable to point to your Android SDK). Start an android emulator, or plug an Android phone,
and launch:

    cd my-android-application
    mvn clean install android:deploy

The application will be built and deployed on the device.

Setting the maven-android-plugin version
----------------------------------------
You can change the default maven-android-plugin version by specifying the 'android-plugin-version' parameter.

Credits
-------
The android-archetype-project is an open source project licensed under the Apache License 2.0.
It is founded by [akquinet](http://akquinet.de/en) and forked by [Novoda](http://novoda.com)

Technical Notes
---------------
* As the archetypes used the new archetype format, they don't work with the deprecated goal 'archetype:create'
