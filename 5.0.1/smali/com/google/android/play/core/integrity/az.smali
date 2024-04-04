.class final Lcom/google/android/play/core/integrity/az;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.1.0-beta01"


# static fields
.field static final a:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.play.core.expressintegrityservice.BIND_EXPRESS_INTEGRITY_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/google/android/play/core/integrity/az;->a:Landroid/content/Intent;

    return-void
.end method
