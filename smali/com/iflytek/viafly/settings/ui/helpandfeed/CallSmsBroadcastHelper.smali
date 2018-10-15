.class public Lcom/iflytek/viafly/settings/ui/helpandfeed/CallSmsBroadcastHelper;
.super Ljava/lang/Object;
.source "CallSmsBroadcastHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallSmsBroadcastHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearStarRecordInfo()V
    .locals 1

    .prologue
    .line 71
    const-string/jumbo v0, ""

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/helpandfeed/CallSmsBroadcastHelper;->saveStarCallRecordPath(Ljava/lang/String;)V

    .line 72
    const-string/jumbo v0, ""

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/helpandfeed/CallSmsBroadcastHelper;->saveStarRecordName(Ljava/lang/String;)V

    .line 73
    const-string/jumbo v0, ""

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/helpandfeed/CallSmsBroadcastHelper;->saveStarSmsRecordPath(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static getStarCallRecordPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_STAR_CALL_RECORD_PATH"

    invoke-virtual {v0, v1}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStarRecordName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_CALL_SMS_STAR_RECORD_NAME"

    invoke-virtual {v0, v1}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStarSmsRecordPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_STAR_SMS_RECORD_PATH"

    invoke-virtual {v0, v1}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isStarBroadcast()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 28
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_CALL_SMS_BROADCAST_FLAG"

    invoke-virtual {v1, v2, v0}, Lil;->b(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static saveStarCallRecordPath(Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_STAR_CALL_RECORD_PATH"

    invoke-virtual {v0, v1, p0}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static saveStarRecordName(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_CALL_SMS_STAR_RECORD_NAME"

    invoke-virtual {v0, v1, p0}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static saveStarSmsRecordPath(Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_STAR_SMS_RECORD_PATH"

    invoke-virtual {v0, v1, p0}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static setBroadcastMethod(I)V
    .locals 4
    .param p0, "flag"    # I

    .prologue
    const/4 v3, 0x2

    .line 15
    const-string/jumbo v0, "CallSmsBroadcastHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBroadcastMethod "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    if-ne v3, p0, :cond_0

    .line 17
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_CALL_SMS_BROADCAST_FLAG"

    invoke-virtual {v0, v1, v3}, Lil;->a(Ljava/lang/String;I)V

    .line 21
    :goto_0
    return-void

    .line 19
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_CALL_SMS_BROADCAST_FLAG"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method
