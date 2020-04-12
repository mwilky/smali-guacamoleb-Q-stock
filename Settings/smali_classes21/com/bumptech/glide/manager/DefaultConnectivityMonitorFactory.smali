.class public Lcom/bumptech/glide/manager/DefaultConnectivityMonitorFactory;
.super Ljava/lang/Object;
.source "DefaultConnectivityMonitorFactory.java"

# interfaces
.implements Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;


# static fields
.field private static final NETWORK_PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_NETWORK_STATE"

.field private static final TAG:Ljava/lang/String; = "ConnectivityMonitor"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)Lcom/bumptech/glide/manager/ConnectivityMonitor;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    const-string v3, "ConnectivityMonitor"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    nop

    if-eqz v1, :cond_1

    const-string v2, "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor"

    goto :goto_1

    :cond_1
    const-string v2, "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor"

    :goto_1
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v1, :cond_3

    new-instance v2, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    invoke-direct {v2, p1, p2}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;-><init>(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)V

    goto :goto_2

    :cond_3
    new-instance v2, Lcom/bumptech/glide/manager/NullConnectivityMonitor;

    invoke-direct {v2}, Lcom/bumptech/glide/manager/NullConnectivityMonitor;-><init>()V

    :goto_2
    return-object v2
.end method
