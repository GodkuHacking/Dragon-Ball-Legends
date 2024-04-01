.class public final synthetic Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@23.0.0"

# interfaces
.implements Lcom/google/firebase/events/EventHandler;


# instance fields
.field public synthetic f$0:Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;

    return-void
.end method


# virtual methods
.method public final handle(Lcom/google/firebase/events/Event;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;

    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->lambda$initialize$0$com-google-firebase-messaging-FirebaseMessaging$AutoInit(Lcom/google/firebase/events/Event;)V

    return-void
.end method
