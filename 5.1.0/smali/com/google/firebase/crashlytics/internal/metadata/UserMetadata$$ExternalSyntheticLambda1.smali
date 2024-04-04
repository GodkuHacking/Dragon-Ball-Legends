.class public final synthetic Lcom/google/firebase/crashlytics/internal/metadata/UserMetadata$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/crashlytics/internal/metadata/UserMetadata;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/crashlytics/internal/metadata/UserMetadata;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/metadata/UserMetadata$$ExternalSyntheticLambda1;->f$0:Lcom/google/firebase/crashlytics/internal/metadata/UserMetadata;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/metadata/UserMetadata$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/metadata/UserMetadata$$ExternalSyntheticLambda1;->f$0:Lcom/google/firebase/crashlytics/internal/metadata/UserMetadata;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/metadata/UserMetadata$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/metadata/UserMetadata;->lambda$updateRolloutsState$1$com-google-firebase-crashlytics-internal-metadata-UserMetadata(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
