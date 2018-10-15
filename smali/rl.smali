.class public abstract Lrl;
.super Ljava/lang/Object;
.source "WebTtsStateListener.java"

# interfaces
.implements Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;


# static fields
.field public static b:I

.field public static c:I


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput v0, Lrl;->b:I

    .line 10
    const/4 v0, 0x1

    sput v0, Lrl;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lrl;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lrl;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 17
    iput p1, p0, Lrl;->a:I

    .line 18
    return-void
.end method
