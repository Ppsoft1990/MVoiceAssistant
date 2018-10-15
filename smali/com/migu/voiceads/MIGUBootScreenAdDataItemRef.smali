.class public abstract Lcom/migu/voiceads/MIGUBootScreenAdDataItemRef;
.super Lcom/migu/voiceads/MIGUAdDataRef;

# interfaces
.implements Lcom/migu/voiceads/MIGUAdDataEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/migu/voiceads/MIGUAdDataRef;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getClickURL()Ljava/lang/String;
.end method

.method public abstract getImprURL()Ljava/lang/String;
.end method
