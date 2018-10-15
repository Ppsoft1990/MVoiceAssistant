.class public Laii;
.super Ljava/lang/Object;
.source "HomeTouchDownEvent.java"


# static fields
.field public static c:I

.field public static d:I


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput v0, Laii;->c:I

    .line 12
    const/4 v0, 0x1

    sput v0, Laii;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Laii;->a:I

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Laii;->b:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Laii;->a:I

    .line 15
    iput-object p1, p0, Laii;->b:Ljava/lang/String;

    .line 16
    return-void
.end method
