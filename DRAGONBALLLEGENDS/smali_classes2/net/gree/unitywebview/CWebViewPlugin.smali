.class public Lnet/gree/unitywebview/CWebViewPlugin;
.super Landroid/app/Fragment;
.source "CWebViewPlugin.java"


# static fields
.field private static final INPUT_FILE_REQUEST_CODE:I = 0x1

.field private static final REQUEST_CODE:I = 0x186a1

.field private static instanceCount:J

.field private static layout:Landroid/widget/FrameLayout;


# instance fields
.field private canGoBack:Z

.field private canGoForward:Z

.field private mAlertDialogEnabled:Z

.field private mAllowAudioCapture:Z

.field private mAllowRegex:Ljava/util/regex/Pattern;

.field private mAllowVideoCapture:Z

.field private mBasicAuthPassword:Ljava/lang/String;

.field private mBasicAuthUserName:Ljava/lang/String;

.field private mCameraPhotoUri:Landroid/net/Uri;

.field private mCustomHeaders:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDenyRegex:Ljava/util/regex/Pattern;

.field private mFilePathCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHookRegex:Ljava/util/regex/Pattern;

.field private mInstanceId:J

.field private mInteractionEnabled:Z

.field private mMessages:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPaused:Z

.field private mTransactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lnet/gree/unitywebview/CWebViewPlugin;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoView:Landroid/view/View;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewPlugin:Lnet/gree/unitywebview/CWebViewPluginInterface;

.field private mWebViewUA:Ljava/lang/String;

.field private progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 262
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 136
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mMessages:Ljava/util/Queue;

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mInteractionEnabled:Z

    return-void
.end method

.method public static IsWebViewAvailable()Z
    .locals 4

    .line 345
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 346
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lnet/gree/unitywebview/CWebViewPlugin$2;

    invoke-direct {v2, v0}, Lnet/gree/unitywebview/CWebViewPlugin$2;-><init>(Landroid/app/Activity;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 360
    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->isDestroyed(Landroid/app/Activity;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 363
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 365
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v3
.end method

.method private ProcessChooser()V
    .locals 5

    const/4 v0, 0x0

    .line 876
    iput-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mCameraPhotoUri:Landroid/net/Uri;

    .line 877
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 878
    invoke-virtual {p0}, Lnet/gree/unitywebview/CWebViewPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 882
    :try_start_0
    invoke-direct {p0}, Lnet/gree/unitywebview/CWebViewPlugin;->createImageFile()Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "CWebViewPlugin"

    const-string v4, "Unable to create Image File"

    .line 885
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_2

    const-string v0, "PhotoPath"

    .line 889
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 890
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_0

    .line 891
    invoke-virtual {p0}, Lnet/gree/unitywebview/CWebViewPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/gree/unitywebview/CWebViewPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".unitywebview.fileprovider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mCameraPhotoUri:Landroid/net/Uri;

    goto :goto_1

    .line 893
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mCameraPhotoUri:Landroid/net/Uri;

    .line 895
    :goto_1
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mCameraPhotoUri:Landroid/net/Uri;

    const-string v2, "output"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    move-object v0, v1

    .line 902
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.OPENABLE"

    .line 903
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v3, 0x1

    .line 904
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "*/*"

    .line 905
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    new-array v4, v3, [Landroid/content/Intent;

    aput-object v0, v4, v2

    goto :goto_2

    :cond_3
    new-array v4, v2, [Landroid/content/Intent;

    .line 914
    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CHOOSER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.INTENT"

    .line 915
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.INITIAL_INTENTS"

    .line 917
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "Select images"

    .line 919
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lnet/gree/unitywebview/CWebViewPlugin;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$000(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/webkit/WebView;
    .locals 0

    .line 131
    iget-object p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$002(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .line 131
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mWebView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$100(Lnet/gree/unitywebview/CWebViewPlugin;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mPaused:Z

    return p0
.end method

.method static synthetic access$1000(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/view/View;
    .locals 0

    .line 131
    iget-object p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mVideoView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1002(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 131
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mVideoView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1100(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 131
    iget-object p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static synthetic access$1102(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 131
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$1202(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 131
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mFilePathCallback:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$1300(Lnet/gree/unitywebview/CWebViewPlugin;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lnet/gree/unitywebview/CWebViewPlugin;->ProcessChooser()V

    return-void
.end method

.method static synthetic access$1400(Lnet/gree/unitywebview/CWebViewPlugin;)Lnet/gree/unitywebview/CWebViewPluginInterface;
    .locals 0

    .line 131
    iget-object p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mWebViewPlugin:Lnet/gree/unitywebview/CWebViewPluginInterface;

    return-object p0
.end method

.method static synthetic access$1402(Lnet/gree/unitywebview/CWebViewPlugin;Lnet/gree/unitywebview/CWebViewPluginInterface;)Lnet/gree/unitywebview/CWebViewPluginInterface;
    .locals 0

    .line 131
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mWebViewPlugin:Lnet/gree/unitywebview/CWebViewPluginInterface;

    return-object p1
.end method

.method static synthetic access$1502(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z
    .locals 0

    .line 131
    iput-boolean p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->canGoBack:Z

    return p1
.end method

.method static synthetic access$1602(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z
    .locals 0

    .line 131
    iput-boolean p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->canGoForward:Z

    return p1
.end method

.method static synthetic access$1700(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/lang/String;
    .locals 0

    .line 131
    iget-object p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mBasicAuthUserName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/lang/String;
    .locals 0

    .line 131
    iget-object p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mBasicAuthPassword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/lang/String;
    .locals 0

    .line 131
    iget-object p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mWebViewUA:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1902(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 131
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mWebViewUA:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/util/List;
    .locals 0

    .line 131
    iget-object p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mTransactions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2000(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/util/regex/Pattern;
    .locals 0

    .line 131
    iget-object p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mAllowRegex:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method static synthetic access$2002(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;
    .locals 0

    .line 131
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mAllowRegex:Ljava/util/regex/Pattern;

    return-object p1
.end method

.method static synthetic access$202(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 131
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mTransactions:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2100(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/util/regex/Pattern;
    .locals 0

    .line 131
    iget-object p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mDenyRegex:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method static synthetic access$2102(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;
    .locals 0

    .line 131
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mDenyRegex:Ljava/util/regex/Pattern;

    return-object p1
.end method

.method static synthetic access$2200(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/util/regex/Pattern;
    .locals 0

    .line 131
    iget-object p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mHookRegex:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method static synthetic access$2202(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;
    .locals 0

    .line 131
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mHookRegex:Ljava/util/regex/Pattern;

    return-object p1
.end method

.method static synthetic access$2300(Lnet/gree/unitywebview/CWebViewPlugin;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mInteractionEnabled:Z

    return p0
.end method

.method static synthetic access$2302(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z
    .locals 0

    .line 131
    iput-boolean p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mInteractionEnabled:Z

    return p1
.end method

.method static synthetic access$2400(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    .line 131
    iget-object p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method static synthetic access$2402(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    .line 131
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p1
.end method

.method static synthetic access$300(Lnet/gree/unitywebview/CWebViewPlugin;)J
    .locals 2

    .line 131
    iget-wide v0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mInstanceId:J

    return-wide v0
.end method

.method static synthetic access$400(Lnet/gree/unitywebview/CWebViewPlugin;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mAlertDialogEnabled:Z

    return p0
.end method

.method static synthetic access$402(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z
    .locals 0

    .line 131
    iput-boolean p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mAlertDialogEnabled:Z

    return p1
.end method

.method static synthetic access$500(Lnet/gree/unitywebview/CWebViewPlugin;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mAllowVideoCapture:Z

    return p0
.end method

.method static synthetic access$502(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z
    .locals 0

    .line 131
    iput-boolean p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mAllowVideoCapture:Z

    return p1
.end method

.method static synthetic access$600(Lnet/gree/unitywebview/CWebViewPlugin;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mAllowAudioCapture:Z

    return p0
.end method

.method static synthetic access$602(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z
    .locals 0

    .line 131
    iput-boolean p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mAllowAudioCapture:Z

    return p1
.end method

.method static synthetic access$700(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/util/Hashtable;
    .locals 0

    .line 131
    iget-object p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mCustomHeaders:Ljava/util/Hashtable;

    return-object p0
.end method

.method static synthetic access$702(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 0

    .line 131
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mCustomHeaders:Ljava/util/Hashtable;

    return-object p1
.end method

.method static synthetic access$802(Lnet/gree/unitywebview/CWebViewPlugin;I)I
    .locals 0

    .line 131
    iput p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->progress:I

    return p1
.end method

.method static synthetic access$900()Landroid/widget/FrameLayout;
    .locals 1

    .line 131
    sget-object v0, Lnet/gree/unitywebview/CWebViewPlugin;->layout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$902(Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 131
    sput-object p0, Lnet/gree/unitywebview/CWebViewPlugin;->layout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private createImageFile()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 924
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 925
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JPEG_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 926
    invoke-virtual {p0}, Lnet/gree/unitywebview/CWebViewPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 927
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 928
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const-string v2, ".jpg"

    .line 930
    invoke-static {v0, v2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static isDestroyed(Landroid/app/Activity;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 255
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 256
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public AddCustomHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1273
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mCustomHeaders:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    return-void

    .line 1276
    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public ClearCache(Z)V
    .locals 2

    .line 1384
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 1385
    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->isDestroyed(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1388
    :cond_0
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$25;

    invoke-direct {v1, p0, p1}, Lnet/gree/unitywebview/CWebViewPlugin$25;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ClearCookies()V
    .locals 2

    .line 1313
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1315
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 1316
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    goto :goto_0

    .line 1318
    :cond_0
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 1319
    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->isDestroyed(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 1322
    :cond_1
    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    .line 1323
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 1324
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 1325
    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 1326
    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 1327
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 1328
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    :goto_0
    return-void
.end method

.method public ClearCustomHeader()V
    .locals 1

    .line 1304
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mCustomHeaders:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    return-void

    .line 1308
    :cond_0
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public Destroy()V
    .locals 3

    .line 938
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 940
    iget-object v1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    .line 941
    iput-object v2, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mWebView:Landroid/webkit/WebView;

    .line 942
    iget-object v2, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mMessages:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 943
    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->isDestroyed(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 946
    :cond_0
    new-instance v2, Lnet/gree/unitywebview/CWebViewPlugin$6;

    invoke-direct {v2, p0, v1, v0, p0}, Lnet/gree/unitywebview/CWebViewPlugin$6;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/webkit/WebView;Landroid/app/Activity;Lnet/gree/unitywebview/CWebViewPlugin;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public EvaluateJS(Ljava/lang/String;)V
    .locals 2

    .line 1033
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 1034
    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->isDestroyed(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1037
    :cond_0
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$10;

    invoke-direct {v1, p0, p1}, Lnet/gree/unitywebview/CWebViewPlugin$10;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public GetCookies(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1348
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 1349
    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public GetCustomHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1281
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mCustomHeaders:Ljava/util/Hashtable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1285
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 1288
    :cond_1
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mCustomHeaders:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public GetMessage()Ljava/lang/String;
    .locals 2

    .line 400
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mMessages:Ljava/util/Queue;

    monitor-enter v0

    .line 401
    :try_start_0
    iget-object v1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mMessages:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mMessages:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 402
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public GoBack()V
    .locals 2

    .line 1050
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 1051
    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->isDestroyed(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1054
    :cond_0
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$11;

    invoke-direct {v1, p0}, Lnet/gree/unitywebview/CWebViewPlugin$11;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public GoForward()V
    .locals 2

    .line 1063
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 1064
    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->isDestroyed(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1067
    :cond_0
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$12;

    invoke-direct {v1, p0}, Lnet/gree/unitywebview/CWebViewPlugin$12;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Init(Ljava/lang/String;ZZILjava/lang/String;I)V
    .locals 13

    move-object v10, p0

    .line 417
    sget-object v11, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 418
    sget-wide v0, Lnet/gree/unitywebview/CWebViewPlugin;->instanceCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lnet/gree/unitywebview/CWebViewPlugin;->instanceCount:J

    .line 419
    iput-wide v0, v10, Lnet/gree/unitywebview/CWebViewPlugin;->mInstanceId:J

    .line 420
    invoke-static {v11}, Lnet/gree/unitywebview/CWebViewPlugin;->isDestroyed(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 423
    :cond_0
    new-instance v12, Lnet/gree/unitywebview/CWebViewPlugin$4;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p0

    move-object v3, v11

    move/from16 v4, p6

    move-object v5, p1

    move-object/from16 v6, p5

    move/from16 v7, p3

    move/from16 v8, p4

    move v9, p2

    invoke-direct/range {v0 .. v9}, Lnet/gree/unitywebview/CWebViewPlugin$4;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Lnet/gree/unitywebview/CWebViewPlugin;Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;ZIZ)V

    invoke-virtual {v11, v12}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 833
    invoke-virtual {v11}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 834
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$5;

    move-object v2, p1

    invoke-direct {v1, p0, v0, v11, p1}, Lnet/gree/unitywebview/CWebViewPlugin$5;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, v10, Lnet/gree/unitywebview/CWebViewPlugin;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 872
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, v10, Lnet/gree/unitywebview/CWebViewPlugin;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public IsInitialized()Z
    .locals 1

    .line 412
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public LoadHTML(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1020
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 1021
    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->isDestroyed(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1024
    :cond_0
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$9;

    invoke-direct {v1, p0, p2, p1}, Lnet/gree/unitywebview/CWebViewPlugin$9;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public LoadURL(Ljava/lang/String;)V
    .locals 2

    .line 1002
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 1003
    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->isDestroyed(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1006
    :cond_0
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$8;

    invoke-direct {v1, p0, p1}, Lnet/gree/unitywebview/CWebViewPlugin$8;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public MyUnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 406
    iget-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mMessages:Ljava/util/Queue;

    monitor-enter p1

    .line 407
    :try_start_0
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mMessages:Ljava/util/Queue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 408
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public OnApplicationPause(Z)V
    .locals 1

    .line 1225
    iput-boolean p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mPaused:Z

    .line 1226
    sget-object p1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 1227
    invoke-static {p1}, Lnet/gree/unitywebview/CWebViewPlugin;->isDestroyed(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1230
    :cond_0
    new-instance v0, Lnet/gree/unitywebview/CWebViewPlugin$24;

    invoke-direct {v0, p0, p1}, Lnet/gree/unitywebview/CWebViewPlugin$24;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Pause()V
    .locals 2

    .line 1196
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 1197
    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->isDestroyed(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1200
    :cond_0
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$22;

    invoke-direct {v1, p0}, Lnet/gree/unitywebview/CWebViewPlugin$22;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Reload()V
    .locals 2

    .line 1076
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 1077
    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->isDestroyed(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1080
    :cond_0
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$13;

    invoke-direct {v1, p0}, Lnet/gree/unitywebview/CWebViewPlugin$13;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public RemoveCustomHeader(Ljava/lang/String;)V
    .locals 1

    .line 1293
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mCustomHeaders:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    return-void

    .line 1297
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1298
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mCustomHeaders:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public Resume()V
    .locals 2

    .line 1210
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 1211
    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->isDestroyed(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1214
    :cond_0
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$23;

    invoke-direct {v1, p0}, Lnet/gree/unitywebview/CWebViewPlugin$23;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public SaveCookies()V
    .locals 2

    .line 1334
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1336
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    goto :goto_0

    .line 1338
    :cond_0
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 1339
    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    .line 1340
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 1341
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 1342
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    :goto_0
    return-void
.end method

.method public SaveDataURL(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "data:"

    .line 170
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    .line 173
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, ";"

    .line 174
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    return-void

    :cond_1
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v1, v1, 0x7

    .line 178
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    .line 179
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 180
    sget-object p2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 181
    new-instance v0, Lnet/gree/unitywebview/CWebViewPlugin$1;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lnet/gree/unitywebview/CWebViewPlugin$1;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public SetAlertDialogEnabled(Z)V
    .locals 2

    .line 1151
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 1152
    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->isDestroyed(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1155
    :cond_0
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$18;

    invoke-direct {v1, p0, p1}, Lnet/gree/unitywebview/CWebViewPlugin$18;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public SetBasicAuthInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1378
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mBasicAuthUserName:Ljava/lang/String;

    .line 1379
    iput-object p2, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mBasicAuthPassword:Ljava/lang/String;

    return-void
.end method

.method public SetCameraAccess(Z)V
    .locals 2

    .line 1161
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 1162
    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->isDestroyed(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1165
    :cond_0
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$19;

    invoke-direct {v1, p0, p1}, Lnet/gree/unitywebview/CWebViewPlugin$19;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public SetCookies(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1354
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 1356
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 1357
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1359
    invoke-virtual {v0, p1, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1361
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    goto :goto_2

    .line 1363
    :cond_1
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 1364
    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    .line 1365
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 1366
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 1367
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1369
    invoke-virtual {v1, p1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1371
    :cond_2
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 1372
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    :goto_2
    return-void
.end method

.method public SetInteractionEnabled(Z)V
    .locals 2

    .line 1127
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 1128
    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->isDestroyed(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1131
    :cond_0
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$16;

    invoke-direct {v1, p0, p1}, Lnet/gree/unitywebview/CWebViewPlugin$16;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public SetMargins(IIII)V
    .locals 3

    .line 1089
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1094
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1095
    sget-object p1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 1096
    invoke-static {p1}, Lnet/gree/unitywebview/CWebViewPlugin;->isDestroyed(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 1099
    :cond_0
    new-instance p2, Lnet/gree/unitywebview/CWebViewPlugin$14;

    invoke-direct {p2, p0, v0}, Lnet/gree/unitywebview/CWebViewPlugin$14;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public SetMicrophoneAccess(Z)V
    .locals 2

    .line 1171
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 1172
    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->isDestroyed(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1175
    :cond_0
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$20;

    invoke-direct {v1, p0, p1}, Lnet/gree/unitywebview/CWebViewPlugin$20;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public SetNetworkAvailable(Z)V
    .locals 2

    .line 1181
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 1182
    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->isDestroyed(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1185
    :cond_0
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$21;

    invoke-direct {v1, p0, p1}, Lnet/gree/unitywebview/CWebViewPlugin$21;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public SetScrollbarsVisibility(Z)V
    .locals 2

    .line 1137
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 1138
    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->isDestroyed(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1141
    :cond_0
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$17;

    invoke-direct {v1, p0, p1}, Lnet/gree/unitywebview/CWebViewPlugin$17;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public SetTextZoom(I)V
    .locals 2

    .line 1398
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 1399
    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->isDestroyed(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1402
    :cond_0
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$26;

    invoke-direct {v1, p0, p1}, Lnet/gree/unitywebview/CWebViewPlugin$26;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public SetURLPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 983
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    move-object p1, v1

    :goto_1
    if-eqz p2, :cond_3

    .line 984
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    goto :goto_3

    :cond_3
    :goto_2
    move-object p2, v1

    :goto_3
    if-eqz p3, :cond_5

    .line 985
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 986
    :cond_5
    :goto_4
    sget-object p3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 987
    invoke-static {p3}, Lnet/gree/unitywebview/CWebViewPlugin;->isDestroyed(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_6

    return v0

    .line 990
    :cond_6
    new-instance v2, Lnet/gree/unitywebview/CWebViewPlugin$7;

    invoke-direct {v2, p0, p1, p2, v1}, Lnet/gree/unitywebview/CWebViewPlugin$7;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)V

    invoke-virtual {p3, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method

.method public SetVisibility(Z)V
    .locals 2

    .line 1108
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 1109
    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->isDestroyed(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1112
    :cond_0
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$15;

    invoke-direct {v1, p0, p1}, Lnet/gree/unitywebview/CWebViewPlugin$15;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 299
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    .line 302
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_5

    .line 303
    iget-object v1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mFilePathCallback:Landroid/webkit/ValueCallback;

    if-nez v1, :cond_1

    .line 304
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_1
    if-ne p2, v3, :cond_4

    const/4 p1, 0x0

    if-nez p3, :cond_2

    .line 311
    iget-object p2, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mCameraPhotoUri:Landroid/net/Uri;

    if-eqz p2, :cond_4

    new-array p3, v0, [Landroid/net/Uri;

    aput-object p2, p3, p1

    goto :goto_0

    .line 315
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    .line 318
    iget-object p2, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mCameraPhotoUri:Landroid/net/Uri;

    if-eqz p2, :cond_4

    new-array p3, v0, [Landroid/net/Uri;

    aput-object p2, p3, p1

    goto :goto_0

    :cond_3
    new-array p3, v0, [Landroid/net/Uri;

    .line 322
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    aput-object p2, p3, p1

    goto :goto_0

    :cond_4
    move-object p3, v4

    .line 326
    :goto_0
    iget-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mFilePathCallback:Landroid/webkit/ValueCallback;

    invoke-interface {p1, p3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 327
    iput-object v4, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mFilePathCallback:Landroid/webkit/ValueCallback;

    goto :goto_2

    .line 329
    :cond_5
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_6

    .line 330
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_6
    if-ne p2, v3, :cond_7

    if-eqz p3, :cond_7

    .line 336
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_7
    move-object p1, v4

    .line 339
    :goto_1
    iget-object p2, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 340
    iput-object v4, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mUploadMessage:Landroid/webkit/ValueCallback;

    :goto_2
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const v0, 0x186a1

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_0

    .line 268
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 269
    invoke-direct {p0}, Lnet/gree/unitywebview/CWebViewPlugin;->ProcessChooser()V

    goto :goto_0

    .line 271
    :cond_0
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mFilePathCallback:Landroid/webkit/ValueCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 272
    iput-object v1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mFilePathCallback:Landroid/webkit/ValueCallback;

    .line 275
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public verifyStoragePermissions(Landroid/app/Activity;)Z
    .locals 6

    .line 372
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_3

    .line 373
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 374
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 375
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 376
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.permission.CAMERA"

    invoke-virtual {v0, v5, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 380
    :cond_1
    :goto_0
    invoke-static {p1}, Lnet/gree/unitywebview/CWebViewPlugin;->isDestroyed(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    return v1

    .line 383
    :cond_2
    new-instance v0, Lnet/gree/unitywebview/CWebViewPlugin$3;

    invoke-direct {v0, p0}, Lnet/gree/unitywebview/CWebViewPlugin$3;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    return v1
.end method
