.class public final Lcom/adjust/sdk/GooglePlayServicesClient$GooglePlayServicesInfo;
.super Ljava/lang/Object;
.source "GooglePlayServicesClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adjust/sdk/GooglePlayServicesClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GooglePlayServicesInfo"
.end annotation


# instance fields
.field private final gpsAdid:Ljava/lang/String;

.field private final trackingEnabled:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/adjust/sdk/GooglePlayServicesClient$GooglePlayServicesInfo;->gpsAdid:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/adjust/sdk/GooglePlayServicesClient$GooglePlayServicesInfo;->trackingEnabled:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getGpsAdid()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/adjust/sdk/GooglePlayServicesClient$GooglePlayServicesInfo;->gpsAdid:Ljava/lang/String;

    return-object v0
.end method

.method public isTrackingEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/adjust/sdk/GooglePlayServicesClient$GooglePlayServicesInfo;->trackingEnabled:Ljava/lang/Boolean;

    return-object v0
.end method
