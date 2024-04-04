.class public abstract Lcom/facebook/unity/FBUnityAppLinkBaseActivity;
.super Landroid/app/Activity;
.source "FBUnityAppLinkBaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getMainActivityClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/facebook/unity/FBUnityAppLinkBaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/facebook/unity/FBUnityAppLinkBaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 49
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 51
    :catch_0
    sget-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    const-string v1, "Unable to find Main Activity Class"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 33
    invoke-virtual {p0, p1}, Lcom/facebook/unity/FBUnityAppLinkBaseActivity;->requestWindowFeature(I)Z

    .line 35
    sget-object p1, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    const-string v0, "Saving deep link from deep linking activity"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p0}, Lcom/facebook/unity/FBUnityAppLinkBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/unity/FB;->SetIntent(Landroid/content/Intent;)V

    .line 38
    sget-object p1, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    const-string v0, "Returning to main activity"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/facebook/unity/FBUnityAppLinkBaseActivity;->getMainActivityClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/facebook/unity/FBUnityAppLinkBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 42
    invoke-virtual {p0}, Lcom/facebook/unity/FBUnityAppLinkBaseActivity;->finish()V

    return-void
.end method
