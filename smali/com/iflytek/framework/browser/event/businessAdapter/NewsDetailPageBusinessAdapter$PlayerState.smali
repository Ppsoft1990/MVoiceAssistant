.class final enum Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;
.super Ljava/lang/Enum;
.source "NewsDetailPageBusinessAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PlayerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

.field public static final enum pause:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

.field public static final enum playing:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

.field public static final enum stop:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    new-instance v0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

    const-string/jumbo v1, "playing"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;->playing:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

    new-instance v0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

    const-string/jumbo v1, "pause"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;->pause:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

    new-instance v0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

    const-string/jumbo v1, "stop"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;->stop:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

    sget-object v1, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;->playing:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;->pause:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;->stop:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;->$VALUES:[Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

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
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 76
    const-class v0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;->$VALUES:[Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

    invoke-virtual {v0}, [Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$PlayerState;

    return-object v0
.end method
