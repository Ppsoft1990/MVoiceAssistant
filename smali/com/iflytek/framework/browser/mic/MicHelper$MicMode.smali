.class public final enum Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;
.super Ljava/lang/Enum;
.source "MicHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/browser/mic/MicHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MicMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;

.field public static final enum SPEECH:Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;

.field public static final enum TEXT:Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 138
    new-instance v0, Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;

    const-string/jumbo v1, "SPEECH"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;->SPEECH:Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;

    .line 143
    new-instance v0, Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;

    const-string/jumbo v1, "TEXT"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;->TEXT:Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;

    .line 133
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;

    sget-object v1, Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;->SPEECH:Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;->TEXT:Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;->$VALUES:[Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;

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
    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 133
    const-class v0, Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;->$VALUES:[Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;

    invoke-virtual {v0}, [Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;

    return-object v0
.end method
