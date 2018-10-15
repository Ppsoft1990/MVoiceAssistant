.class public Laiy;
.super Ljava/lang/Object;
.source "AudioResourceCardItem.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "bgUrl"    # Ljava/lang/String;
    .param p3, "expireTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p5, "items":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Laiy;->a:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Laiy;->b:Ljava/lang/String;

    .line 48
    iput-wide p3, p0, Laiy;->c:J

    .line 51
    iput-object p5, p0, Laiy;->d:Ljava/util/List;

    .line 52
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Laiy;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Laiy;->d:Ljava/util/List;

    return-object v0
.end method
