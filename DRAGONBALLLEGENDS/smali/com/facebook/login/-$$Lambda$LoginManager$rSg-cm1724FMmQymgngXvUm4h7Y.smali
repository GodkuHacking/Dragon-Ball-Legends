.class public final synthetic Lcom/facebook/login/-$$Lambda$LoginManager$rSg-cm1724FMmQymgngXvUm4h7Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/facebook/internal/CallbackManagerImpl$Callback;


# instance fields
.field public final synthetic f$0:Lcom/facebook/login/LoginManager;

.field public final synthetic f$1:Lcom/facebook/FacebookCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/login/LoginManager;Lcom/facebook/FacebookCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/login/-$$Lambda$LoginManager$rSg-cm1724FMmQymgngXvUm4h7Y;->f$0:Lcom/facebook/login/LoginManager;

    iput-object p2, p0, Lcom/facebook/login/-$$Lambda$LoginManager$rSg-cm1724FMmQymgngXvUm4h7Y;->f$1:Lcom/facebook/FacebookCallback;

    return-void
.end method


# virtual methods
.method public final onActivityResult(ILandroid/content/Intent;)Z
    .locals 2

    iget-object v0, p0, Lcom/facebook/login/-$$Lambda$LoginManager$rSg-cm1724FMmQymgngXvUm4h7Y;->f$0:Lcom/facebook/login/LoginManager;

    iget-object v1, p0, Lcom/facebook/login/-$$Lambda$LoginManager$rSg-cm1724FMmQymgngXvUm4h7Y;->f$1:Lcom/facebook/FacebookCallback;

    invoke-static {v0, v1, p1, p2}, Lcom/facebook/login/LoginManager;->lambda$rSg-cm1724FMmQymgngXvUm4h7Y(Lcom/facebook/login/LoginManager;Lcom/facebook/FacebookCallback;ILandroid/content/Intent;)Z

    move-result p1

    return p1
.end method
