.class public final Lcom/facebook/gamingservices/TournamentShareDialog$Result;
.super Ljava/lang/Object;
.source "TournamentShareDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gamingservices/TournamentShareDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/facebook/gamingservices/TournamentShareDialog$Result;",
        "",
        "results",
        "Landroid/os/Bundle;",
        "(Landroid/os/Bundle;)V",
        "requestID",
        "",
        "getRequestID",
        "()Ljava/lang/String;",
        "setRequestID",
        "(Ljava/lang/String;)V",
        "tournamentID",
        "getTournamentID",
        "setTournamentID",
        "facebook-gamingservices_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private requestID:Ljava/lang/String;

.field private tournamentID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "results"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "request"

    .line 166
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/gamingservices/TournamentShareDialog$Result;->requestID:Ljava/lang/String;

    :cond_0
    const-string v0, "tournament_id"

    .line 169
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentShareDialog$Result;->tournamentID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getRequestID()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentShareDialog$Result;->requestID:Ljava/lang/String;

    return-object v0
.end method

.method public final getTournamentID()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentShareDialog$Result;->tournamentID:Ljava/lang/String;

    return-object v0
.end method

.method public final setRequestID(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentShareDialog$Result;->requestID:Ljava/lang/String;

    return-void
.end method

.method public final setTournamentID(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentShareDialog$Result;->tournamentID:Ljava/lang/String;

    return-void
.end method
