.class public final synthetic Lcom/facebook/login/NativeAppLoginMethodHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/facebook/login/NativeAppLoginMethodHandler;

.field public final synthetic f$1:Lcom/facebook/login/LoginClient$Request;

.field public final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/login/NativeAppLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/login/NativeAppLoginMethodHandler$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/login/NativeAppLoginMethodHandler;

    iput-object p2, p0, Lcom/facebook/login/NativeAppLoginMethodHandler$$ExternalSyntheticLambda0;->f$1:Lcom/facebook/login/LoginClient$Request;

    iput-object p3, p0, Lcom/facebook/login/NativeAppLoginMethodHandler$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/login/NativeAppLoginMethodHandler$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/login/NativeAppLoginMethodHandler;

    iget-object v1, p0, Lcom/facebook/login/NativeAppLoginMethodHandler$$ExternalSyntheticLambda0;->f$1:Lcom/facebook/login/LoginClient$Request;

    iget-object v2, p0, Lcom/facebook/login/NativeAppLoginMethodHandler$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->$r8$lambda$JnkykxZxaUhp4FLJXiYNVaeOM84(Lcom/facebook/login/NativeAppLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V

    return-void
.end method
