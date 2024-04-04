.class public Lcom/growthbeat/message/view/PlainMessageFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "PlainMessageFragment.java"


# instance fields
.field private plainMessage:Lcom/growthbeat/message/model/PlainMessage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/growthbeat/message/view/PlainMessageFragment;->plainMessage:Lcom/growthbeat/message/model/PlainMessage;

    return-void
.end method

.method static synthetic access$000(Lcom/growthbeat/message/view/PlainMessageFragment;)Lcom/growthbeat/message/model/PlainMessage;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/growthbeat/message/view/PlainMessageFragment;->plainMessage:Lcom/growthbeat/message/model/PlainMessage;

    return-object p0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 26
    :try_start_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 28
    :catch_0
    invoke-virtual {p0}, Lcom/growthbeat/message/view/PlainMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 35
    invoke-virtual {p0}, Lcom/growthbeat/message/view/PlainMessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 38
    :cond_0
    instance-of v1, p1, Lcom/growthbeat/message/model/PlainMessage;

    if-nez v1, :cond_1

    return-object v0

    .line 41
    :cond_1
    check-cast p1, Lcom/growthbeat/message/model/PlainMessage;

    iput-object p1, p0, Lcom/growthbeat/message/view/PlainMessageFragment;->plainMessage:Lcom/growthbeat/message/model/PlainMessage;

    .line 43
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/growthbeat/message/view/PlainMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    iget-object v1, p0, Lcom/growthbeat/message/view/PlainMessageFragment;->plainMessage:Lcom/growthbeat/message/model/PlainMessage;

    invoke-virtual {v1}, Lcom/growthbeat/message/model/PlainMessage;->getCaption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 47
    iget-object v1, p0, Lcom/growthbeat/message/view/PlainMessageFragment;->plainMessage:Lcom/growthbeat/message/model/PlainMessage;

    invoke-virtual {v1}, Lcom/growthbeat/message/model/PlainMessage;->getButtons()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    .line 53
    :cond_2
    iget-object v1, p0, Lcom/growthbeat/message/view/PlainMessageFragment;->plainMessage:Lcom/growthbeat/message/model/PlainMessage;

    invoke-virtual {v1}, Lcom/growthbeat/message/model/PlainMessage;->getButtons()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    return-object v0

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/growthbeat/message/view/PlainMessageFragment;->plainMessage:Lcom/growthbeat/message/model/PlainMessage;

    invoke-virtual {v0}, Lcom/growthbeat/message/model/PlainMessage;->getButtons()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/growthbeat/message/model/PlainButton;

    .line 60
    iget-object v1, p0, Lcom/growthbeat/message/view/PlainMessageFragment;->plainMessage:Lcom/growthbeat/message/model/PlainMessage;

    invoke-virtual {v1}, Lcom/growthbeat/message/model/PlainMessage;->getButtons()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/growthbeat/message/model/PlainButton;

    goto :goto_0

    .line 55
    :cond_4
    iget-object v1, p0, Lcom/growthbeat/message/view/PlainMessageFragment;->plainMessage:Lcom/growthbeat/message/model/PlainMessage;

    invoke-virtual {v1}, Lcom/growthbeat/message/model/PlainMessage;->getButtons()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/growthbeat/message/model/PlainButton;

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 66
    :goto_0
    iget-object v2, p0, Lcom/growthbeat/message/view/PlainMessageFragment;->plainMessage:Lcom/growthbeat/message/model/PlainMessage;

    invoke-virtual {v2}, Lcom/growthbeat/message/model/PlainMessage;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_5

    .line 68
    invoke-virtual {v0}, Lcom/growthbeat/message/model/PlainButton;->getLabel()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/growthbeat/message/view/PlainMessageFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/growthbeat/message/view/PlainMessageFragment$1;-><init>(Lcom/growthbeat/message/view/PlainMessageFragment;Lcom/growthbeat/message/model/PlainButton;)V

    invoke-virtual {p1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_5
    if-eqz v1, :cond_6

    .line 79
    invoke-virtual {v1}, Lcom/growthbeat/message/model/PlainButton;->getLabel()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/growthbeat/message/view/PlainMessageFragment$2;

    invoke-direct {v2, p0, v1}, Lcom/growthbeat/message/view/PlainMessageFragment$2;-><init>(Lcom/growthbeat/message/view/PlainMessageFragment;Lcom/growthbeat/message/model/PlainButton;)V

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    :cond_6
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 97
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 98
    invoke-virtual {p0}, Lcom/growthbeat/message/view/PlainMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/growthbeat/message/view/PlainMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/growthbeat/message/view/PlainMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_0
    return-void
.end method
