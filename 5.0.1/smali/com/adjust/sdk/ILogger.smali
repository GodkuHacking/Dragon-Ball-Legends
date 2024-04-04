.class public interface abstract Lcom/adjust/sdk/ILogger;
.super Ljava/lang/Object;
.source "ILogger.java"


# virtual methods
.method public varargs abstract Assert(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract debug(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract error(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract info(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract lockLogLevel()V
.end method

.method public abstract setLogLevel(Lcom/adjust/sdk/LogLevel;Z)V
.end method

.method public abstract setLogLevelString(Ljava/lang/String;Z)V
.end method

.method public varargs abstract verbose(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract warn(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract warnInProduction(Ljava/lang/String;[Ljava/lang/Object;)V
.end method
