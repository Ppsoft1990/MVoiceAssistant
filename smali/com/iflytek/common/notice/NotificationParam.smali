.class public Lcom/iflytek/common/notice/NotificationParam;
.super Ljava/lang/Object;
.source "NotificationParam.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final DEFAULT_NOTICE_RING_PATH:Ljava/lang/String; = "ringtone/notice.mp3"

.field protected static final serialVersionUID:J = 0x17e36c951291d976L


# instance fields
.field public final business:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public flag:I

.field public iconCustom:Ljava/lang/String;

.field public final id:I

.field public isRing:Z

.field public layoutRes:I

.field public ringPath:Ljava/lang/String;

.field public showBtnContentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "business"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x11

    iput v0, p0, Lcom/iflytek/common/notice/NotificationParam;->flag:I

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/common/notice/NotificationParam;->isRing:Z

    .line 32
    const-string/jumbo v0, "ringtone/notice.mp3"

    iput-object v0, p0, Lcom/iflytek/common/notice/NotificationParam;->ringPath:Ljava/lang/String;

    .line 35
    const v0, 0x7f0300b7

    iput v0, p0, Lcom/iflytek/common/notice/NotificationParam;->layoutRes:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/common/notice/NotificationParam;->showBtnContentMap:Ljava/util/Map;

    .line 45
    iput p1, p0, Lcom/iflytek/common/notice/NotificationParam;->id:I

    .line 46
    iput-object p2, p0, Lcom/iflytek/common/notice/NotificationParam;->business:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "business"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "content"    # Ljava/lang/String;
    .param p7, "iconCustom"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    .local p5, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p6, "showBtnContentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x11

    iput v0, p0, Lcom/iflytek/common/notice/NotificationParam;->flag:I

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/common/notice/NotificationParam;->isRing:Z

    .line 32
    const-string/jumbo v0, "ringtone/notice.mp3"

    iput-object v0, p0, Lcom/iflytek/common/notice/NotificationParam;->ringPath:Ljava/lang/String;

    .line 35
    const v0, 0x7f0300b7

    iput v0, p0, Lcom/iflytek/common/notice/NotificationParam;->layoutRes:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/common/notice/NotificationParam;->showBtnContentMap:Ljava/util/Map;

    .line 59
    iput p1, p0, Lcom/iflytek/common/notice/NotificationParam;->id:I

    .line 60
    iput-object p2, p0, Lcom/iflytek/common/notice/NotificationParam;->business:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/iflytek/common/notice/NotificationParam;->title:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/iflytek/common/notice/NotificationParam;->content:Ljava/lang/String;

    .line 63
    iput-object p5, p0, Lcom/iflytek/common/notice/NotificationParam;->data:Ljava/util/Map;

    .line 64
    iput-object p6, p0, Lcom/iflytek/common/notice/NotificationParam;->showBtnContentMap:Ljava/util/Map;

    .line 65
    iput-object p7, p0, Lcom/iflytek/common/notice/NotificationParam;->iconCustom:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NotificationParam [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/common/notice/NotificationParam;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", business="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/notice/NotificationParam;->business:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/notice/NotificationParam;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/notice/NotificationParam;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/common/notice/NotificationParam;->flag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/notice/NotificationParam;->data:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isRing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/iflytek/common/notice/NotificationParam;->isRing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ringPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/notice/NotificationParam;->ringPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", layoutRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/common/notice/NotificationParam;->layoutRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", showBtnContentMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/notice/NotificationParam;->showBtnContentMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", iconCustom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/notice/NotificationParam;->iconCustom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
