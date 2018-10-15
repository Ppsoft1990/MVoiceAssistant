.class public final enum Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;
.super Ljava/lang/Enum;
.source "MicHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/browser/mic/MicHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SessionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

.field public static final enum MIC_CLICK:Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

.field public static final enum MIC_LONGCLICK:Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

.field public static final enum TEXT_LONGCLICK:Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

.field public static final enum TEXT_SEARCH:Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 174
    new-instance v0, Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

    const-string/jumbo v1, "MIC_CLICK"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;->MIC_CLICK:Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

    .line 179
    new-instance v0, Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

    const-string/jumbo v1, "MIC_LONGCLICK"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;->MIC_LONGCLICK:Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

    .line 184
    new-instance v0, Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

    const-string/jumbo v1, "TEXT_LONGCLICK"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;->TEXT_LONGCLICK:Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

    .line 189
    new-instance v0, Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

    const-string/jumbo v1, "TEXT_SEARCH"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;->TEXT_SEARCH:Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

    .line 169
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

    sget-object v1, Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;->MIC_CLICK:Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;->MIC_LONGCLICK:Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;->TEXT_LONGCLICK:Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;->TEXT_SEARCH:Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;->$VALUES:[Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 169
    const-class v0, Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;->$VALUES:[Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

    invoke-virtual {v0}, [Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

    return-object v0
.end method
