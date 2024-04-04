.class Lnet/gree/unitywebview/CWebViewPlugin$26;
.super Ljava/lang/Object;
.source "CWebViewPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/gree/unitywebview/CWebViewPlugin;->SetTextZoom(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/gree/unitywebview/CWebViewPlugin;

.field final synthetic val$textZoom:I


# direct methods
.method constructor <init>(Lnet/gree/unitywebview/CWebViewPlugin;I)V
    .locals 0

    .line 1402
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$26;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iput p2, p0, Lnet/gree/unitywebview/CWebViewPlugin$26;->val$textZoom:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1403
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$26;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$000(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1406
    :cond_0
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$26;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$000(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget v1, p0, Lnet/gree/unitywebview/CWebViewPlugin$26;->val$textZoom:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    return-void
.end method
