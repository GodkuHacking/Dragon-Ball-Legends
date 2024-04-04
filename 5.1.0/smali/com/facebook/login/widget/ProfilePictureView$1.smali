.class Lcom/facebook/login/widget/ProfilePictureView$1;
.super Lcom/facebook/ProfileTracker;
.source "ProfilePictureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/widget/ProfilePictureView;->initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/widget/ProfilePictureView;


# direct methods
.method constructor <init>(Lcom/facebook/login/widget/ProfilePictureView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 407
    iput-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView$1;->this$0:Lcom/facebook/login/widget/ProfilePictureView;

    invoke-direct {p0}, Lcom/facebook/ProfileTracker;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCurrentProfileChanged(Lcom/facebook/Profile;Lcom/facebook/Profile;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldProfile",
            "currentProfile"
        }
    .end annotation

    .line 410
    iget-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView$1;->this$0:Lcom/facebook/login/widget/ProfilePictureView;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/facebook/Profile;->getId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/facebook/login/widget/ProfilePictureView;->setProfileId(Ljava/lang/String;)V

    .line 411
    iget-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView$1;->this$0:Lcom/facebook/login/widget/ProfilePictureView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/facebook/login/widget/ProfilePictureView;->access$000(Lcom/facebook/login/widget/ProfilePictureView;Z)V

    return-void
.end method
