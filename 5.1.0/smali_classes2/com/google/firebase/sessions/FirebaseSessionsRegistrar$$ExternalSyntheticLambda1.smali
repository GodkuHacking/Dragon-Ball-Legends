.class public final synthetic Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$$ExternalSyntheticLambda1;->INSTANCE:Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->$r8$lambda$7iASc30mC7EdZM7I-OQ831gjIS0(Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/sessions/SessionGenerator;

    move-result-object p1

    return-object p1
.end method