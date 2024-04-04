.class final Lcom/google/android/play/core/integrity/bc;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.1.0-beta01"


# instance fields
.field private final a:Lcom/google/android/play/core/integrity/ay;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/integrity/ay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/integrity/bc;->a:Lcom/google/android/play/core/integrity/ay;

    return-void
.end method


# virtual methods
.method final synthetic a(JJLcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/bc;->a:Lcom/google/android/play/core/integrity/ay;

    invoke-virtual {p5}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;->a()Ljava/lang/String;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/play/core/integrity/ay;->c(Ljava/lang/String;JJ)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
