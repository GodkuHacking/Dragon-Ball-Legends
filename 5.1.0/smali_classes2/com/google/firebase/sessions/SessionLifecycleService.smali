.class public final Lcom/google/firebase/sessions/SessionLifecycleService;
.super Landroid/app/Service;
.source "SessionLifecycleService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/SessionLifecycleService$MessageHandler;,
        Lcom/google/firebase/sessions/SessionLifecycleService$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u00132\u00020\u0001:\u0002\u0013\u0014B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0011H\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/google/firebase/sessions/SessionLifecycleService;",
        "Landroid/app/Service;",
        "()V",
        "handlerThread",
        "Landroid/os/HandlerThread;",
        "getHandlerThread$com_google_firebase_firebase_sessions",
        "()Landroid/os/HandlerThread;",
        "messageHandler",
        "Lcom/google/firebase/sessions/SessionLifecycleService$MessageHandler;",
        "messenger",
        "Landroid/os/Messenger;",
        "getClientCallback",
        "intent",
        "Landroid/content/Intent;",
        "onBind",
        "Landroid/os/IBinder;",
        "onCreate",
        "",
        "onDestroy",
        "Companion",
        "MessageHandler",
        "com.google.firebase-firebase-sessions"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final BACKGROUNDED:I = 0x2

.field private static final CLIENT_BOUND:I = 0x4

.field public static final CLIENT_CALLBACK_MESSENGER:Ljava/lang/String; = "ClientCallbackMessenger"

.field public static final Companion:Lcom/google/firebase/sessions/SessionLifecycleService$Companion;

.field public static final FOREGROUNDED:I = 0x1

.field public static final SESSION_UPDATED:I = 0x3

.field public static final SESSION_UPDATE_EXTRA:Ljava/lang/String; = "SessionUpdateExtra"

.field public static final TAG:Ljava/lang/String; = "SessionLifecycleService"


# instance fields
.field private final handlerThread:Landroid/os/HandlerThread;

.field private messageHandler:Lcom/google/firebase/sessions/SessionLifecycleService$MessageHandler;

.field private messenger:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/sessions/SessionLifecycleService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/SessionLifecycleService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/sessions/SessionLifecycleService;->Companion:Lcom/google/firebase/sessions/SessionLifecycleService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FirebaseSessions_HandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/firebase/sessions/SessionLifecycleService;->handlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method private final getClientCallback(Landroid/content/Intent;)Landroid/os/Messenger;
    .locals 3

    .line 214
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "ClientCallbackMessenger"

    const/16 v2, 0x21

    if-lt v0, v2, :cond_0

    .line 215
    const-class v0, Landroid/os/Messenger;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Messenger;

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Messenger;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final getHandlerThread$com_google_firebase_firebase_sessions()Landroid/os/HandlerThread;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/firebase/sessions/SessionLifecycleService;->handlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    const-string v0, "SessionLifecycleService"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "Service bound with null intent. Ignoring."

    .line 191
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    move-object p1, v1

    check-cast p1, Landroid/os/IBinder;

    goto :goto_0

    .line 194
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service bound to new client on process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-direct {p0, p1}, Lcom/google/firebase/sessions/SessionLifecycleService;->getClientCallback(Landroid/content/Intent;)Landroid/os/Messenger;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    const/4 v2, 0x0

    .line 197
    invoke-static {v1, v0, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 198
    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 199
    iget-object p1, p0, Lcom/google/firebase/sessions/SessionLifecycleService;->messageHandler:Lcom/google/firebase/sessions/SessionLifecycleService$MessageHandler;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/firebase/sessions/SessionLifecycleService$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 201
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/sessions/SessionLifecycleService;->messenger:Landroid/os/Messenger;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public onCreate()V
    .locals 3

    .line 182
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 183
    iget-object v0, p0, Lcom/google/firebase/sessions/SessionLifecycleService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 184
    new-instance v0, Lcom/google/firebase/sessions/SessionLifecycleService$MessageHandler;

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionLifecycleService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "handlerThread.looper"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/SessionLifecycleService$MessageHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/firebase/sessions/SessionLifecycleService;->messageHandler:Lcom/google/firebase/sessions/SessionLifecycleService$MessageHandler;

    .line 185
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionLifecycleService;->messageHandler:Lcom/google/firebase/sessions/SessionLifecycleService$MessageHandler;

    check-cast v1, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/firebase/sessions/SessionLifecycleService;->messenger:Landroid/os/Messenger;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 205
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 206
    iget-object v0, p0, Lcom/google/firebase/sessions/SessionLifecycleService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method
