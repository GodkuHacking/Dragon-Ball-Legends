.class Lnet/gree/unitywebview/CWebViewPlugin$3;
.super Ljava/lang/Object;
.source "CWebViewPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/gree/unitywebview/CWebViewPlugin;->verifyStoragePermissions(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/gree/unitywebview/CWebViewPlugin;


# direct methods
.method constructor <init>(Lnet/gree/unitywebview/CWebViewPlugin;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$3;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.CAMERA"

    .line 384
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 389
    iget-object v1, p0, Lnet/gree/unitywebview/CWebViewPlugin$3;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    const v2, 0x186a1

    invoke-virtual {v1, v0, v2}, Lnet/gree/unitywebview/CWebViewPlugin;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method
