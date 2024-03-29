.class public abstract Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;
.super Landroid/preference/PreferenceActivity;
.source "OPRingtoneBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$PhoneCallListener;
    }
.end annotation


# static fields
.field public static final ALARM_NEED_VIBRATE:Ljava/lang/String; = "needVibrate"

.field private static final CHECK_RINGTONE_PLAY_STATUS:I = 0x1

.field public static final DELAY_MS_SELECTION_PLAYED:I = 0x12c

.field private static final DELAY_PLAY_RINGTONE:I = 0x2

.field public static final KEY_SELECTED_ITEM_URI:Ljava/lang/String; = "key_selected_item_uri"

.field private static final TAG:Ljava/lang/String; = "RingtoneBaseActivity"


# instance fields
.field private isFirst:Z

.field private isPlaying:Z

.field protected isSelectedNone:Z

.field private mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field public mContactsRingtone:Z

.field private mDefaultRingtone:Landroid/media/Ringtone;

.field public mDefualtUri:Landroid/net/Uri;

.field public mHandler:Landroid/os/Handler;

.field public mHasDefaultItem:Z

.field public mIsAlarmNeedVibrate:Z

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mPhoneCallListener:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$PhoneCallListener;

.field public mRingtoneManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

.field private mSimid:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mType:I

.field public mUriForDefaultItem:Landroid/net/Uri;

.field private mUserContext:Landroid/content/Context;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mContactsRingtone:Z

    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isFirst:Z

    iput v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mSimid:I

    iput-boolean v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mIsAlarmNeedVibrate:Z

    iput-boolean v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isPlaying:Z

    iput-boolean v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isSelectedNone:Z

    new-instance v0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$1;-><init>(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$2;-><init>(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$3;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$3;-><init>(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mLookupRingtoneNames:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)Landroid/media/Ringtone;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isPlaying:Z

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mSimid:I

    return v0
.end method

.method private getVibrateLevel(I)I
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    const/4 v1, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, -0x3

    return v0

    :cond_1
    return v1

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private lookupRingtoneNames()V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isThreePart()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mContactsRingtone:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private startPreview()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->startVibrate(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private stopAnyPlayingRingtone2()V
    .locals 3

    const-class v0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopAnyPlayingRingtone2 mDefaultRingtone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCountOfSim()I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isMultiSimEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCountOfSim:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RingtoneBaseActivity"

    invoke-static {v2, v1}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getSim1Enable()Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public getSim2Enable()Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public getSimId()I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mSimid:I

    return v0
.end method

.method public getUserContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUserContext:Landroid/content/Context;

    return-object v0
.end method

.method public isMultiSimEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method

.method public isProfileId()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isThreePart()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHasDefaultItem:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHasDefaultItem:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHasDefaultItem:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onBackPressed()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    const-string v2, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->setResult(ILandroid/content/Intent;)V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->getThemeMode(Landroid/content/ContentResolver;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->setLightNavigationBar(Landroid/view/Window;I)V

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "CURRENT_USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/settings/Utils;->createPackageContextAsUser(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUserContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUserContext:Landroid/content/Context;

    const-string v4, "RingtoneBaseActivity"

    if-nez v3, :cond_0

    const-string v3, "use application context instead"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUserContext:Landroid/content/Context;

    :cond_0
    const/4 v3, 0x1

    const-string v5, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    const-string v5, "needVibrate"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mIsAlarmNeedVibrate:Z

    const-string v5, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHasDefaultItem:Z

    const-string v5, "ringtone_for_contacts"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mContactsRingtone:Z

    nop

    const-string v5, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    iput-object v5, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefualtUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v5, :cond_2

    if-eqz p1, :cond_1

    const-string v5, "key_selected_item_uri"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    :cond_1
    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isSelectedNone:Z

    if-nez v5, :cond_2

    const-string v5, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    iput-object v5, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDefualtUri:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefualtUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mUriForDefaultItem:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHasDefaultItem:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHasDefaultItem:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    const-string v4, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, "oneplus.intent.extra.ringtone.simid"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mSimid:I

    if-nez v4, :cond_5

    iget v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mSimid:I

    if-ne v1, v3, :cond_3

    const v1, 0x7f120f44

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    const/4 v5, 0x2

    if-ne v1, v5, :cond_4

    const v1, 0x7f120f45

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_4
    const v1, 0x1040639

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_5
    :goto_0
    new-instance v1, Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mRingtoneManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mRingtoneManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    iget v5, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    invoke-virtual {v1, v5}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setType(I)V

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mRingtoneManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->inferStreamType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->setVolumeControlStream(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mAudioManager:Landroid/media/AudioManager;

    new-instance v3, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$PhoneCallListener;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$PhoneCallListener;-><init>(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)V

    iput-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mPhoneCallListener:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$PhoneCallListener;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->onBackPressed()V

    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->stopAnyPlayingRingtone()V

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mPhoneCallListener:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$PhoneCallListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "key_selected_item_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isFirst:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->lookupRingtoneNames()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isFirst:Z

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mPhoneCallListener:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$PhoneCallListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_selected_item_uri"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected playRingtone(ILandroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHandler:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 4

    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->stopAnyPlayingRingtone2()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUriForDefaultItem:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RingtoneBaseActivity"

    invoke-static {v1, v0}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mRingtoneManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->inferStreamType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isPlaying:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isPlaying:Z

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mRingtoneManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    invoke-virtual {v2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->inferStreamType()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->startPreview()V

    :cond_2
    return-void
.end method

.method protected startVibrate(Landroid/net/Uri;)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    :cond_0
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUserContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-static {v0, p1, v2}, Lcom/oneplus/settings/utils/OPVibrateUtils;->startVibrateForSms(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Vibrator;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mIsAlarmNeedVibrate:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUserContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-static {v0, p1, v2}, Lcom/oneplus/settings/utils/OPVibrateUtils;->startVibrateForAlarm(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Vibrator;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUserContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-static {v0, p1, v2}, Lcom/oneplus/settings/utils/OPVibrateUtils;->startVibrateForNotification(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Vibrator;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUserContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-static {v0, p1, v2}, Lcom/oneplus/settings/utils/OPVibrateUtils;->startVibrateForRingtone(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Vibrator;)V

    nop

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isThreeKeyRingMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    return-void
.end method

.method protected stopAnyPlayingRingtone()V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->stopAnyPlayingRingtone2()V

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->stopVibrate()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isPlaying:Z

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method protected stopVibrate()V
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected abstract updateSelected()V
.end method
