.class public Lcom/oneplus/settings/system/OPCarrierUiccUnlockController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPCarrierUiccUnlockController.java"


# static fields
.field private static final KEY_UICC_UNLOCK:Ljava/lang/String; = "uicc_unlock"

.field private static final TAG:Ljava/lang/String; = "OPCarrierUiccUnlockCont"


# instance fields
.field private mContext:Landroid/content/Context;

.field private unlockPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "uicc_unlock"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oneplus/settings/system/OPCarrierUiccUnlockController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getSimLockStatus()I
    .locals 7

    const/4 v0, -0x1

    :try_start_0
    const-string v1, "com.oneplus.android.telephony.OPSprintReqManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getDefault"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "getSimLockStatus"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/system/OPCarrierUiccUnlockController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/system/OPCarrierUiccUnlockController;->unlockPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUssOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "uicc_unlock"

    return-object v0
.end method

.method public bridge synthetic getSummary()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/system/OPCarrierUiccUnlockController;->getSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lcom/oneplus/settings/system/OPCarrierUiccUnlockController;->getSimLockStatus()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/system/OPCarrierUiccUnlockController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1215ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/system/OPCarrierUiccUnlockController;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/settings/system/OPCarrierUiccUnlockController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1215cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/system/OPCarrierUiccUnlockController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1215cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    const-string v1, "value"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/system/OPCarrierUiccUnlockController;->queryParamstore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "defaultvalue"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/system/OPCarrierUiccUnlockController;->queryParamstore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public queryParamstore(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v0, ""

    const-string v1, "content://com.redbend.app.provider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/settings/system/OPCarrierUiccUnlockController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/String;

    const-string v3, "sim_rssb_indicator"

    const/4 v8, 0x0

    aput-object v3, v6, v8

    const/4 v9, 0x1

    aput-object p1, v6, v9

    const/4 v3, 0x2

    const-string v7, "0"

    aput-object v7, v6, v3

    const/4 v7, 0x0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ne v3, v9, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/system/OPCarrierUiccUnlockController;->unlockPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/system/OPCarrierUiccUnlockController;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v0, "OPCarrierUiccUnlockCont"

    const-string v1, "updateState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
