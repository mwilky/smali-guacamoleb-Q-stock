.class public Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;
.super Ljava/lang/Object;
.source "WifiDeviceNameTextValidator.java"

# interfaces
.implements Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$Validator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isTextValid(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/android/settings/wifi/WifiUtils;->isSSIDTooLong(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/settings/wifi/WifiUtils;->isSSIDTooShort(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
