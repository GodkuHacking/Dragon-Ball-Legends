.class public final synthetic Lcom/facebook/login/-$$Lambda$LoginFragment$ZEVJADYgAVahNKHKaOqa_mTkvkk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/facebook/login/LoginClient$OnCompletedListener;


# instance fields
.field public final synthetic f$0:Lcom/facebook/login/LoginFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/login/LoginFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/login/-$$Lambda$LoginFragment$ZEVJADYgAVahNKHKaOqa_mTkvkk;->f$0:Lcom/facebook/login/LoginFragment;

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/login/LoginClient$Result;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/-$$Lambda$LoginFragment$ZEVJADYgAVahNKHKaOqa_mTkvkk;->f$0:Lcom/facebook/login/LoginFragment;

    invoke-static {v0, p1}, Lcom/facebook/login/LoginFragment;->lambda$ZEVJADYgAVahNKHKaOqa_mTkvkk(Lcom/facebook/login/LoginFragment;Lcom/facebook/login/LoginClient$Result;)V

    return-void
.end method
