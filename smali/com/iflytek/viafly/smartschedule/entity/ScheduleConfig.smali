.class public Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;
.super Ljava/lang/Object;
.source "ScheduleConfig.java"


# instance fields
.field private apiMinVersion:Ljava/lang/String;

.field private appMinVersion:Ljava/lang/String;

.field private classname:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private defaultstatus:I

.field private extra:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private remindtiming:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "classname"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "extra"    # Ljava/lang/String;
    .param p6, "remindtiming"    # Ljava/lang/String;
    .param p7, "defaultstatus"    # I
    .param p8, "version"    # I
    .param p9, "icon"    # Ljava/lang/String;
    .param p10, "appMinVersion"    # Ljava/lang/String;
    .param p11, "apiMinVersion"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->name:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->classname:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->title:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->content:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->extra:Ljava/lang/String;

    .line 28
    iput-object p6, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->remindtiming:Ljava/lang/String;

    .line 29
    iput p7, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->defaultstatus:I

    .line 30
    iput p8, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->version:I

    .line 31
    iput-object p9, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->icon:Ljava/lang/String;

    .line 32
    iput-object p10, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->appMinVersion:Ljava/lang/String;

    .line 33
    iput-object p11, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->apiMinVersion:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 126
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 142
    :cond_0
    :goto_0
    return v2

    .line 127
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 129
    check-cast v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    .line 131
    .local v0, "that":Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;
    iget v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->defaultstatus:I

    iget v4, v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->defaultstatus:I

    if-ne v3, v4, :cond_0

    .line 132
    iget v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->version:I

    iget v4, v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->version:I

    if-ne v3, v4, :cond_0

    .line 133
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->name:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    :cond_2
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->title:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    :cond_3
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->content:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->content:Ljava/lang/String;

    iget-object v4, v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->content:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    :cond_4
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->extra:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->extra:Ljava/lang/String;

    iget-object v4, v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->extra:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    :cond_5
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->remindtiming:Ljava/lang/String;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->remindtiming:Ljava/lang/String;

    iget-object v4, v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->remindtiming:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    :cond_6
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->icon:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->icon:Ljava/lang/String;

    iget-object v4, v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->icon:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    :cond_7
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->appMinVersion:Ljava/lang/String;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->appMinVersion:Ljava/lang/String;

    iget-object v4, v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->appMinVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    :cond_8
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->apiMinVersion:Ljava/lang/String;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->apiMinVersion:Ljava/lang/String;

    iget-object v4, v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->apiMinVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    move v1, v2

    :cond_a
    :goto_1
    move v2, v1

    goto/16 :goto_0

    .line 133
    :cond_b
    iget-object v3, v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->name:Ljava/lang/String;

    if-eqz v3, :cond_2

    goto/16 :goto_0

    .line 134
    :cond_c
    iget-object v3, v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->title:Ljava/lang/String;

    if-eqz v3, :cond_3

    goto/16 :goto_0

    .line 135
    :cond_d
    iget-object v3, v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->content:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto/16 :goto_0

    .line 136
    :cond_e
    iget-object v3, v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->extra:Ljava/lang/String;

    if-eqz v3, :cond_5

    goto/16 :goto_0

    .line 137
    :cond_f
    iget-object v3, v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->remindtiming:Ljava/lang/String;

    if-eqz v3, :cond_6

    goto/16 :goto_0

    .line 139
    :cond_10
    iget-object v3, v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->icon:Ljava/lang/String;

    if-eqz v3, :cond_7

    goto/16 :goto_0

    .line 140
    :cond_11
    iget-object v3, v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->appMinVersion:Ljava/lang/String;

    if-eqz v3, :cond_8

    goto/16 :goto_0

    .line 142
    :cond_12
    iget-object v3, v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->apiMinVersion:Ljava/lang/String;

    if-nez v3, :cond_9

    goto :goto_1
.end method

.method public getApiMinVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->apiMinVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAppMinVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->appMinVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getClassname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->classname:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultstatus()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->defaultstatus:I

    return v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRemindtiming()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->remindtiming:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 149
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->title:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 150
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->content:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->content:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 151
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->extra:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->extra:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 152
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->remindtiming:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->remindtiming:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 153
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->defaultstatus:I

    add-int v0, v2, v3

    .line 154
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->version:I

    add-int v0, v2, v3

    .line 155
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->icon:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->icon:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 156
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->appMinVersion:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->appMinVersion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int v0, v3, v2

    .line 157
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->apiMinVersion:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->apiMinVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 158
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 148
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 149
    goto :goto_1

    :cond_3
    move v2, v1

    .line 150
    goto :goto_2

    :cond_4
    move v2, v1

    .line 151
    goto :goto_3

    :cond_5
    move v2, v1

    .line 152
    goto :goto_4

    :cond_6
    move v2, v1

    .line 155
    goto :goto_5

    :cond_7
    move v2, v1

    .line 156
    goto :goto_6
.end method

.method public setApiMinVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "apiMinVersion"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->apiMinVersion:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setAppMinVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "appMinVersion"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->appMinVersion:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setClassname(Ljava/lang/String;)V
    .locals 0
    .param p1, "classname"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->classname:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->content:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setDefaultstatus(I)V
    .locals 0
    .param p1, "defaultstatus"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->defaultstatus:I

    .line 90
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->extra:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "icon"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->icon:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->name:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setRemindtiming(Ljava/lang/String;)V
    .locals 0
    .param p1, "remindtiming"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->remindtiming:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->title:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->version:I

    .line 98
    return-void
.end method
