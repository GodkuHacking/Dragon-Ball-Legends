.class public Ljp/co/dimps/trad/gcm/TRADLocalNotificationData;
.super Ljava/lang/Object;
.source "TRADLocalNotificationData.java"


# instance fields
.field public channel_name:Ljava/lang/String;

.field public content_text:Ljava/lang/String;

.field public content_title:Ljava/lang/String;

.field public primary_key:I

.field public unix_time:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Ljp/co/dimps/trad/gcm/TRADLocalNotificationData;->primary_key:I

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Ljp/co/dimps/trad/gcm/TRADLocalNotificationData;->unix_time:J

    const-string v0, ""

    .line 10
    iput-object v0, p0, Ljp/co/dimps/trad/gcm/TRADLocalNotificationData;->content_title:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Ljp/co/dimps/trad/gcm/TRADLocalNotificationData;->content_text:Ljava/lang/String;

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Ljp/co/dimps/trad/gcm/TRADLocalNotificationData;->channel_name:Ljava/lang/String;

    return-void
.end method
