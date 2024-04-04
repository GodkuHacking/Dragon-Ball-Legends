.class public final synthetic Lnet/codestage/actk/androidnative/CodeHashGenerator$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:[Ljava/lang/String;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/codestage/actk/androidnative/CodeHashGenerator$$ExternalSyntheticLambda3;->f$0:[Ljava/lang/String;

    iput p2, p0, Lnet/codestage/actk/androidnative/CodeHashGenerator$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lnet/codestage/actk/androidnative/CodeHashGenerator$$ExternalSyntheticLambda3;->f$0:[Ljava/lang/String;

    iget v1, p0, Lnet/codestage/actk/androidnative/CodeHashGenerator$$ExternalSyntheticLambda3;->f$1:I

    invoke-static {v0, v1}, Lnet/codestage/actk/androidnative/CodeHashGenerator;->lambda$GetCodeHash$0([Ljava/lang/String;I)Lnet/codestage/actk/androidnative/CodeHashGenerator$HashCalculationResult;

    move-result-object v0

    return-object v0
.end method
