.class public final synthetic Lcom/facebook/gamingservices/-$$Lambda$TournamentShareDialog$wJ3OZ3ZGmn2Q896SkFBjg7NmyuY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/facebook/internal/CallbackManagerImpl$Callback;


# instance fields
.field public final synthetic f$0:Lcom/facebook/gamingservices/TournamentShareDialog;

.field public final synthetic f$1:Lcom/facebook/share/internal/ResultProcessor;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/gamingservices/TournamentShareDialog;Lcom/facebook/share/internal/ResultProcessor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/gamingservices/-$$Lambda$TournamentShareDialog$wJ3OZ3ZGmn2Q896SkFBjg7NmyuY;->f$0:Lcom/facebook/gamingservices/TournamentShareDialog;

    iput-object p2, p0, Lcom/facebook/gamingservices/-$$Lambda$TournamentShareDialog$wJ3OZ3ZGmn2Q896SkFBjg7NmyuY;->f$1:Lcom/facebook/share/internal/ResultProcessor;

    return-void
.end method


# virtual methods
.method public final onActivityResult(ILandroid/content/Intent;)Z
    .locals 2

    iget-object v0, p0, Lcom/facebook/gamingservices/-$$Lambda$TournamentShareDialog$wJ3OZ3ZGmn2Q896SkFBjg7NmyuY;->f$0:Lcom/facebook/gamingservices/TournamentShareDialog;

    iget-object v1, p0, Lcom/facebook/gamingservices/-$$Lambda$TournamentShareDialog$wJ3OZ3ZGmn2Q896SkFBjg7NmyuY;->f$1:Lcom/facebook/share/internal/ResultProcessor;

    invoke-static {v0, v1, p1, p2}, Lcom/facebook/gamingservices/TournamentShareDialog;->lambda$wJ3OZ3ZGmn2Q896SkFBjg7NmyuY(Lcom/facebook/gamingservices/TournamentShareDialog;Lcom/facebook/share/internal/ResultProcessor;ILandroid/content/Intent;)Z

    move-result p1

    return p1
.end method
