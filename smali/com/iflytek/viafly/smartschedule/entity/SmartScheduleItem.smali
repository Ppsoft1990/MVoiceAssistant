.class public Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;
.super Ljava/lang/Object;
.source "SmartScheduleItem.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/iflytek/viafly/schedule/framework/entities/IntimateReminderData;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private content:Ljava/lang/String;

.field private createtime:J

.field private extra:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private remindtiming:Ljava/lang/String;

.field private status:I

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 181
    new-instance v0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem$1;

    invoke-direct {v0}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem$1;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->name:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->title:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->content:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->remindtiming:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->status:I

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->icon:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->extra:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->createtime:J

    .line 179
    return-void
.end method

.method public constructor <init>(Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V
    .locals 1
    .param p1, "scheduleConfig"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;
    .param p2, "runDataItem"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->name:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->title:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->content:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->getRemindtiming()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->remindtiming:Ljava/lang/String;

    .line 32
    invoke-virtual {p2}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getStatus()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->status:I

    .line 33
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->getIcon()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->icon:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->getExtra()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->extra:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatetime()J
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->createtime:J

    return-wide v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRemindtiming()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->remindtiming:Ljava/lang/String;

    return-object v0
.end method

.method public getScheduleBindId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getScheduleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getScheduleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheduleSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getRemindtiming()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->status:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isClose()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 100
    iget v1, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->status:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 2

    .prologue
    .line 96
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScheduleDated()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public isScheduleUsed()Z
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->isClose()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->content:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setCreatetime(J)V
    .locals 1
    .param p1, "createtime"    # J

    .prologue
    .line 143
    iput-wide p1, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->createtime:J

    .line 144
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->extra:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "icon"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->icon:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->name:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setRemindtiming(Ljava/lang/String;)V
    .locals 0
    .param p1, "remindtiming"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->remindtiming:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setScheduleUsed(ZLjava/lang/String;)V
    .locals 0
    .param p1, "isused"    # Z
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 121
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->status:I

    .line 75
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->title:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SmartScheduleItem [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", remindtiming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->remindtiming:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->remindtiming:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->icon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->extra:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-wide v0, p0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->createtime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 168
    return-void
.end method
