.class Lnet/gree/unitywebview/CWebViewPluginInterface;
.super Ljava/lang/Object;
.source "CWebViewPlugin.java"


# instance fields
.field private mGameObject:Ljava/lang/String;

.field private mPlugin:Lnet/gree/unitywebview/CWebViewPlugin;


# direct methods
.method public constructor <init>(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/lang/String;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPluginInterface;->mPlugin:Lnet/gree/unitywebview/CWebViewPlugin;

    .line 97
    iput-object p2, p0, Lnet/gree/unitywebview/CWebViewPluginInterface;->mGameObject:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lnet/gree/unitywebview/CWebViewPluginInterface;)Lnet/gree/unitywebview/CWebViewPlugin;
    .locals 0

    .line 91
    iget-object p0, p0, Lnet/gree/unitywebview/CWebViewPluginInterface;->mPlugin:Lnet/gree/unitywebview/CWebViewPlugin;

    return-object p0
.end method

.method static synthetic access$100(Lnet/gree/unitywebview/CWebViewPluginInterface;)Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lnet/gree/unitywebview/CWebViewPluginInterface;->mGameObject:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public call(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "CallFromJS"

    .line 102
    invoke-virtual {p0, v0, p1}, Lnet/gree/unitywebview/CWebViewPluginInterface;->call(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 106
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 107
    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->isDestroyed(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 110
    :cond_0
    new-instance v1, Lnet/gree/unitywebview/CWebViewPluginInterface$1;

    invoke-direct {v1, p0, p1, p2}, Lnet/gree/unitywebview/CWebViewPluginInterface$1;-><init>(Lnet/gree/unitywebview/CWebViewPluginInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public saveDataURL(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 119
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 120
    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->isDestroyed(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 123
    :cond_0
    new-instance v1, Lnet/gree/unitywebview/CWebViewPluginInterface$2;

    invoke-direct {v1, p0, p1, p2}, Lnet/gree/unitywebview/CWebViewPluginInterface$2;-><init>(Lnet/gree/unitywebview/CWebViewPluginInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
