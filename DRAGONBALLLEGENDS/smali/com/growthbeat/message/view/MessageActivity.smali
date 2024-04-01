.class public Lcom/growthbeat/message/view/MessageActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "MessageActivity.java"


# instance fields
.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/growthbeat/message/view/MessageActivity;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/growthbeat/message/view/MessageActivity;->close()V

    return-void
.end method

.method private close()V
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/growthbeat/message/view/MessageActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/growthbeat/message/view/MessageActivity;->finish()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 23
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 25
    invoke-virtual {p0, p1}, Lcom/growthbeat/message/view/MessageActivity;->requestWindowFeature(I)Z

    .line 27
    invoke-virtual {p0}, Lcom/growthbeat/message/view/MessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/growthbeat/message/model/Message;

    .line 28
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 29
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 31
    sget-object v1, Lcom/growthbeat/message/view/MessageActivity$2;->$SwitchMap$com$growthbeat$message$model$Message$MessageType:[I

    invoke-virtual {v0}, Lcom/growthbeat/message/model/Message;->getType()Lcom/growthbeat/message/model/Message$MessageType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/growthbeat/message/model/Message$MessageType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, p1, :cond_2

    const/4 p1, 0x2

    const v0, 0x1020002

    if-eq v1, p1, :cond_1

    const/4 p1, 0x3

    if-eq v1, p1, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Lcom/growthbeat/message/view/SwipeMessageFragment;

    invoke-direct {p1}, Lcom/growthbeat/message/view/SwipeMessageFragment;-><init>()V

    .line 45
    invoke-virtual {p1, v2}, Lcom/growthbeat/message/view/SwipeMessageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/growthbeat/message/view/MessageActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 39
    :cond_1
    new-instance p1, Lcom/growthbeat/message/view/CardMessageFragment;

    invoke-direct {p1}, Lcom/growthbeat/message/view/CardMessageFragment;-><init>()V

    .line 40
    invoke-virtual {p1, v2}, Lcom/growthbeat/message/view/CardMessageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/growthbeat/message/view/MessageActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 33
    :cond_2
    new-instance p1, Lcom/growthbeat/message/view/PlainMessageFragment;

    invoke-direct {p1}, Lcom/growthbeat/message/view/PlainMessageFragment;-><init>()V

    .line 34
    check-cast v0, Lcom/growthbeat/message/model/PlainMessage;

    invoke-virtual {v0}, Lcom/growthbeat/message/model/PlainMessage;->getBackground()Lcom/growthbeat/message/model/Background;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthbeat/message/model/Background;->isOutsideClose()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/growthbeat/message/view/PlainMessageFragment;->setCancelable(Z)V

    .line 35
    invoke-virtual {p1, v2}, Lcom/growthbeat/message/view/PlainMessageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/growthbeat/message/view/MessageActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/growthbeat/message/view/PlainMessageFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 53
    :goto_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/growthbeat/message/view/MessageActivity$1;

    invoke-direct {v0, p0}, Lcom/growthbeat/message/view/MessageActivity$1;-><init>(Lcom/growthbeat/message/view/MessageActivity;)V

    iput-object v0, p0, Lcom/growthbeat/message/view/MessageActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 62
    invoke-virtual {p0, v0, p1}, Lcom/growthbeat/message/view/MessageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 72
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 73
    invoke-static {}, Lcom/growthbeat/message/GrowthMessage;->getInstance()Lcom/growthbeat/message/GrowthMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthbeat/message/GrowthMessage;->notifyPopNextMessage()V

    .line 74
    iget-object v0, p0, Lcom/growthbeat/message/view/MessageActivity;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0, v0}, Lcom/growthbeat/message/view/MessageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
