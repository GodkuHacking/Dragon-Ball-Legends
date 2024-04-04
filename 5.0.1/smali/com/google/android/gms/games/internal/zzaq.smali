.class public final Lcom/google/android/gms/games/internal/zzaq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.0.0"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/google/android/gms/games/internal/zzd;


# instance fields
.field private final zza:Lcom/google/android/gms/games/internal/zzak;

.field private final zzb:Lcom/google/android/gms/internal/games_v2/zzam;

.field private zzc:Ljava/lang/ref/WeakReference;

.field private zzd:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/games/internal/zzak;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/zzaq;->zzd:Z

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzaq;->zza:Lcom/google/android/gms/games/internal/zzak;

    new-instance p1, Lcom/google/android/gms/internal/games_v2/zzam;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/games_v2/zzam;-><init>(ILandroid/os/IBinder;)V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzaq;->zzb:Lcom/google/android/gms/internal/games_v2/zzam;

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/games/internal/zzak;I)Lcom/google/android/gms/games/internal/zzaq;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/zzaq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/zzaq;-><init>(Lcom/google/android/gms/games/internal/zzak;I)V

    return-object v0
.end method

.method private final zzh(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR1()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 5
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object v4, p0, Lcom/google/android/gms/games/internal/zzaq;->zzb:Lcom/google/android/gms/internal/games_v2/zzam;

    iput v1, v4, Lcom/google/android/gms/internal/games_v2/zzam;->zzc:I

    iput-object v0, v4, Lcom/google/android/gms/internal/games_v2/zzam;->zza:Landroid/os/IBinder;

    const/4 v0, 0x0

    aget v0, v2, v0

    iput v0, v4, Lcom/google/android/gms/internal/games_v2/zzam;->zzd:I

    const/4 v1, 0x1

    aget v1, v2, v1

    iput v1, v4, Lcom/google/android/gms/internal/games_v2/zzam;->zze:I

    add-int/2addr v0, v3

    iput v0, v4, Lcom/google/android/gms/internal/games_v2/zzam;->zzf:I

    add-int/2addr v1, p1

    iput v1, v4, Lcom/google/android/gms/internal/games_v2/zzam;->zzg:I

    iget-boolean p1, p0, Lcom/google/android/gms/games/internal/zzaq;->zzd:Z

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzaq;->zzg()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzaq;->zzc:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/zzaq;->zzh(Landroid/view/View;)V

    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzaq;->zzh(Landroid/view/View;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzaq;->zza:Lcom/google/android/gms/games/internal/zzak;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzak;->zzs()V

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public final zza(Landroid/app/Activity;)V
    .locals 3

    const v0, 0x1020002

    .line 1
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "PopupManager"

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to bind to: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/games_v2/zzez;->zzg(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Binding to: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/games_v2/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/zzaq;->zzf(Landroid/view/View;)V

    return-void
.end method

.method public final zzb()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzaq;->zzb:Lcom/google/android/gms/internal/games_v2/zzam;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzam;->zza()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzaq;->zzb:Lcom/google/android/gms/internal/games_v2/zzam;

    iget-object v0, v0, Lcom/google/android/gms/internal/games_v2/zzam;->zza:Landroid/os/IBinder;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/games_v2/zzam;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzaq;->zzb:Lcom/google/android/gms/internal/games_v2/zzam;

    return-object v0
.end method

.method public final zzf(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzaq;->zza:Lcom/google/android/gms/games/internal/zzak;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzak;->zzs()V

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzaq;->zzc:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzaq;->zza:Lcom/google/android/gms/games/internal/zzak;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/games/internal/zzak;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v0, :cond_0

    .line 4
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 5
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBean()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/games/internal/zzaq;->zzc:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzaq;->zza:Lcom/google/android/gms/games/internal/zzak;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzak;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "PopupManager"

    if-nez p1, :cond_4

    .line 12
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_4

    .line 13
    check-cast v0, Landroid/app/Activity;

    const v2, 0x1020002

    .line 14
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez p1, :cond_3

    .line 15
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    :cond_3
    const-string v0, "You have not specified a View to use as content view for popups. Falling back to the Activity content view. Note that this may not work as expected in multi-screen environments"

    .line 16
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/games_v2/zzez;->zzg(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz p1, :cond_5

    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzaq;->zzh(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 18
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/zzaq;->zzc:Ljava/lang/ref/WeakReference;

    .line 19
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 21
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :cond_5
    const-string p1, "No content view usable to display popups. Popups will not be displayed in response to this client\'s calls. Use setViewForPopups() to set your content view."

    .line 22
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/games_v2/zzez;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzg()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzaq;->zzb:Lcom/google/android/gms/internal/games_v2/zzam;

    iget-object v1, v0, Lcom/google/android/gms/internal/games_v2/zzam;->zza:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/games/internal/zzaq;->zza:Lcom/google/android/gms/games/internal/zzak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzam;->zza()Landroid/os/Bundle;

    move-result-object v0

    .line 2
    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/games/internal/zzak;->zzQ(Landroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/zzaq;->zzd:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
