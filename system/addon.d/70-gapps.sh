#!/sbin/sh
# 
# /system/addon.d/70-gapps.sh
#
. /tmp/backuptool.functions

list_files() {
cat <<EOF
app/ChromeBookmarksSyncAdapter.apk
app/ConfigUpdater.apk
app/GenieWidget.apk
app/Gmail.apk
app/GmsCore.apk
app/GoogleBackupTransport.apk
app/GoogleCalendarSyncAdapter.apk
app/GoogleContactsSyncAdapter.apk
app/GoogleEars.apk
app/GoogleFeedback.apk
app/GoogleLoginService.apk
app/GooglePartnerSetup.apk
app/GooglePlus.apk
app/GoogleServicesFramework.apk
app/GoogleTTS.apk
app/LatinImeDictionaryPack.apk
app/MediaUploader.apk
app/NetworkLocation.apk
app/OneTimeInitializer.apk
app/Phonesky.apk
app/QuickSearchBox.apk
app/SetupWizard.apk app/Provision.apk
app/Talkback.apk
app/VoiceSearchStub.apk
etc/permissions/com.google.android.maps.xml
etc/permissions/com.google.android.media.effects.xml
etc/permissions/com.google.widevine.software.drm.xml
etc/permissions/features.xml
etc/preferred-apps/google.xml
etc/g.prop
framework/com.google.android.maps.jar
framework/com.google.android.media.effects.jar
framework/com.google.widevine.software.drm.jar
lib/libAppDataSearch.so
lib/libfilterpack_facedetect.so
lib/libfrsdk.so
lib/libgames_rtmp_jni.so
lib/libgcomm_jni.so
lib/libgoogle_recognizer_jni.so
lib/libgoogle_recognizer_jni_l.so
lib/libgtalk_jni.so
lib/libgtalk_stabilize.so
lib/libjni_latinime.so
lib/libpatts_engine_jni_api.so
lib/libplus_jni_v8.so
lib/librs.antblur_constant.so
lib/librs.antblur_drama.so
lib/librs.antblur.so
lib/librs.drama.so
lib/librs.film_base.so
lib/librs.fixedframe.so
lib/librs.grey.so
lib/librs.image_wrapper.so
lib/librsjni.so
lib/librs.retrolux.so
lib/libRSSupport.so
lib/libspeexwrapper.so
libvcdecoder_jni.so
lib/libvorbisencoder.so
lib/libwebp_android.so
tts/lang_pico/de-DE_gl0_sg.bin
tts/lang_pico/de-DE_ta.bin
tts/lang_pico/es-ES_ta.bin
tts/lang_pico/es-ES_zl0_sg.bin
tts/lang_pico/fr-FR_nk0_sg.bin
tts/lang_pico/fr-FR_ta.bin
tts/lang_pico/it-IT_cm0_sg.bin
tts/lang_pico/it-IT_ta.bin
usr/srec/en-US/acoustic_model
usr/srec/en-US/c_fst
usr/srec/en-US/clg
usr/srec/en-US/compile_grammar.config
usr/srec/en-US/contacts.abnf
usr/srec/en-US/dict
usr/srec/en-US/dictation.config
usr/srec/en-US/embed_phone_nn_model
usr/srec/en-US/embed_phone_nn_state_sym
usr/srec/en-US/endpointer_dictation.config
usr/srec/en-US/endpointer_voicesearch.config
usr/srec/en-US/ep_acoustic_model
usr/srec/en-US/g2p_fst
usr/srec/en-US/google_hotword.config
usr/srec/en-US/google_hotword_clg
usr/srec/en-US/google_hotword_logistic
usr/srec/en-US/grammar.config
usr/srec/en-US/hmmsyms
usr/srec/en-US/hotword_symbols
usr/srec/en-US/lintrans_model
usr/srec/en-US/metadata
usr/srec/en-US/norm_fst
usr/srec/en-US/normalizer
usr/srec/en-US/offensive_word_normalizer
usr/srec/en-US/phonelist
usr/srec/en-US/rescoring_lm
usr/srec/en-US/symbols
EOF
}

case "$1" in
  backup)
    list_files | while read FILE DUMMY; do
      backup_file $S/$FILE
    done
  ;;
  restore)
    list_files | while read FILE REPLACEMENT; do
      R=""
      [ -n "$REPLACEMENT" ] && R="$S/$REPLACEMENT"
      [ -f "$C/$S/$FILE" ] && restore_file $S/$FILE $R
    done
  ;;
  pre-backup)
    # Stub
  ;;
  post-backup)
    # Stub
  ;;
  pre-restore)
    # Stub
  ;;
  post-restore)
    # Stub
  ;;
esac
