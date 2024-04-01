.class Lnet/gree/unitywebview/CWebViewPlugin$4$3;
.super Ljava/lang/Object;
.source "CWebViewPlugin.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/gree/unitywebview/CWebViewPlugin$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;


# direct methods
.method constructor <init>(Lnet/gree/unitywebview/CWebViewPlugin$4;)V
    .locals 0

    .line 807
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$3;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 810
    iget-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$3;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p1, p1, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {p1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$2300(Lnet/gree/unitywebview/CWebViewPlugin;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
