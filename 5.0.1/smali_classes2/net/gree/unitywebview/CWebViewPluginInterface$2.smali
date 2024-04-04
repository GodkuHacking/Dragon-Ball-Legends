.class Lnet/gree/unitywebview/CWebViewPluginInterface$2;
.super Ljava/lang/Object;
.source "CWebViewPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/gree/unitywebview/CWebViewPluginInterface;->saveDataURL(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/gree/unitywebview/CWebViewPluginInterface;

.field final synthetic val$dataURL:Ljava/lang/String;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/gree/unitywebview/CWebViewPluginInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPluginInterface$2;->this$0:Lnet/gree/unitywebview/CWebViewPluginInterface;

    iput-object p2, p0, Lnet/gree/unitywebview/CWebViewPluginInterface$2;->val$fileName:Ljava/lang/String;

    iput-object p3, p0, Lnet/gree/unitywebview/CWebViewPluginInterface$2;->val$dataURL:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 124
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPluginInterface$2;->this$0:Lnet/gree/unitywebview/CWebViewPluginInterface;

    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPluginInterface;->access$000(Lnet/gree/unitywebview/CWebViewPluginInterface;)Lnet/gree/unitywebview/CWebViewPlugin;

    move-result-object v0

    invoke-virtual {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->IsInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPluginInterface$2;->this$0:Lnet/gree/unitywebview/CWebViewPluginInterface;

    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPluginInterface;->access$000(Lnet/gree/unitywebview/CWebViewPluginInterface;)Lnet/gree/unitywebview/CWebViewPlugin;

    move-result-object v0

    iget-object v1, p0, Lnet/gree/unitywebview/CWebViewPluginInterface$2;->val$fileName:Ljava/lang/String;

    iget-object v2, p0, Lnet/gree/unitywebview/CWebViewPluginInterface$2;->val$dataURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lnet/gree/unitywebview/CWebViewPlugin;->SaveDataURL(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
