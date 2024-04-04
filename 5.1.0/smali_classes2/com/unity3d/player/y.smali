.class Lcom/unity3d/player/y;
.super Landroid/widget/EditText;


# instance fields
.field final synthetic a:Lcom/unity3d/player/B;


# direct methods
.method constructor <init>(Lcom/unity3d/player/B;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/y;->a:Lcom/unity3d/player/B;

    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/unity3d/player/y;->a:Lcom/unity3d/player/B;

    invoke-static {p1}, Lcom/unity3d/player/B;->-$$Nest$mb(Lcom/unity3d/player/B;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/unity3d/player/B;->-$$Nest$ma(Lcom/unity3d/player/B;Ljava/lang/String;Z)V

    return v0

    :cond_0
    const/16 v1, 0x54

    if-ne p1, v1, :cond_1

    return v0

    :cond_1
    const/16 v1, 0x42

    if-ne p1, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-nez v1, :cond_2

    iget-object p1, p0, Lcom/unity3d/player/y;->a:Lcom/unity3d/player/B;

    invoke-static {p1}, Lcom/unity3d/player/B;->-$$Nest$mb(Lcom/unity3d/player/B;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lcom/unity3d/player/B;->-$$Nest$ma(Lcom/unity3d/player/B;Ljava/lang/String;Z)V

    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onSelectionChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/y;->a:Lcom/unity3d/player/B;

    invoke-static {v0}, Lcom/unity3d/player/B;->-$$Nest$fgetb(Lcom/unity3d/player/B;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    sub-int/2addr p2, p1

    invoke-virtual {v0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->reportSoftInputSelection(II)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object p1, p0, Lcom/unity3d/player/y;->a:Lcom/unity3d/player/B;

    invoke-static {p1}, Lcom/unity3d/player/B;->-$$Nest$fgeta(Lcom/unity3d/player/B;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
