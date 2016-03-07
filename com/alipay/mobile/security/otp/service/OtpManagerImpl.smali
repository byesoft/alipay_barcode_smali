.class public Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;
.super Lcom/alipay/mobile/security/otp/OtpManager;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field public final OtpSvrTimeUseRpc:Ljava/lang/String;

.field public final SERVER_TIME_DIFF:Ljava/lang/String;

.field public final TIME_SP_FILE:Ljava/lang/String;

.field protected final a:Ljava/lang/String;

.field protected final b:Ljava/lang/String;

.field protected final c:Ljava/lang/String;

.field protected d:Lcom/alipay/mobile/security/senative/SE;

.field protected e:Landroid/content/Context;

.method static constructor <clinit>()V
    .registers 1
    const-string/jumbo v0, "BIZ_ONSITEPAY"
    sput-object v0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->f:Ljava/lang/String;
    const-string/jumbo v0, "BIZ_INIT_DEVICE"
    sput-object v0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->g:Ljava/lang/String;
    const-string/jumbo v0, "1"
    sput-object v0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->h:Ljava/lang/String;
    const-string/jumbo v0, "2"
    sput-object v0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->i:Ljava/lang/String;
    const-string/jumbo v0, "3"
    sput-object v0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->j:Ljava/lang/String;
    const-string/jumbo v0, "4"
    sput-object v0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->k:Ljava/lang/String;
    const-string/jumbo v0, "BIZ_DELSEEDANDINDEX"
    sput-object v0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l:Ljava/lang/String;
    const-string/jumbo v0, "1"
    sput-object v0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->m:Ljava/lang/String;
    const-string/jumbo v0, "seed"
    sput-object v0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->n:Ljava/lang/String;
    const-string/jumbo v0, "index"
    sput-object v0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->o:Ljava/lang/String;
    const-string/jumbo v0, "time"
    sput-object v0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->p:Ljava/lang/String;
    return-void
.end method

.method public constructor <init>()V
    .catch Ljava/lang/Throwable; { :L0 .. :L1 } :L2
    .registers 14
    const/4 v4, 0
    invoke-direct { p0 }, Lcom/alipay/mobile/security/otp/OtpManager;-><init>()V
    const-string/jumbo v0, "OtpManager"
    iput-object v0, p0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->a:Ljava/lang/String;
    const-string/jumbo v0, "timedeff"
    iput-object v0, p0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->b:Ljava/lang/String;
    const-string/jumbo v0, "interval"
    iput-object v0, p0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->c:Ljava/lang/String;
    iput-object v4, p0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->d:Lcom/alipay/mobile/security/senative/SE;
    iput-object v4, p0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->e:Landroid/content/Context;
    const-string/jumbo v0, "deviceLock"
    iput-object v0, p0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->TIME_SP_FILE:Ljava/lang/String;
    const-string/jumbo v0, "serverTimeDiff"
    iput-object v0, p0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->SERVER_TIME_DIFF:Ljava/lang/String;
    const-string/jumbo v0, "OtpSvrTimeUseRpc"
    iput-object v0, p0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->OtpSvrTimeUseRpc:Ljava/lang/String;
    invoke-static { }, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->e:Landroid/content/Context;
    :L0
    new-instance v0, Lcom/alipay/mobile/security/senative/SE;
    invoke-direct { v0 }, Lcom/alipay/mobile/security/senative/SE;-><init>()V
    iput-object v0, p0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->d:Lcom/alipay/mobile/security/senative/SE;
    :L1
    return-void
    :L2
    move-exception v0
    move-object v3, v0
    invoke-static { }, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    move-result-object v0
    const-string/jumbo v1, "StackTrace"
    invoke-interface { v0, v1, v3 }, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-virtual { p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    move-result-object v0
    if-eqz v0, :L4
    invoke-virtual { p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;
    move-result-object v10
    :L3
    invoke-virtual { p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    move-result-object v0
    invoke-interface { v0 }, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;
    move-result-object v0
    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->ERROR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;
    const-string/jumbo v2, "kf"
    invoke-virtual { v3 }, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    move-result-object v3
    const-string/jumbo v8, "SEException"
    const-string/jumbo v9, "-"
    const-string/jumbo v11, "-"
    const/4 v5, 5
    new-array v12, v5, [Ljava/lang/String;
    const/4 v5, 0
    const-string/jumbo v6, "kf"
    aput-object v6, v12, v5
    const/4 v5, 1
    const-string/jumbo v6, "OtpManager"
    aput-object v6, v12, v5
    const/4 v5, 2
    const-string/jumbo v6, ""
    aput-object v6, v12, v5
    const/4 v5, 3
    const-string/jumbo v6, "y"
    aput-object v6, v12, v5
    const/4 v5, 4
    const-string/jumbo v6, "alipayclient"
    aput-object v6, v12, v5
    move-object v5, v4
    move-object v6, v4
    move-object v7, v4
    invoke-static/range { v0 .. v12 }, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    goto :L1
    :L4
    const-string/jumbo v10, "-"
    goto :L3
.end method

.method private a()Ljava/lang/String;
    .catch Ljava/lang/Exception; { :L0 .. :L9 } :L13
    .catch Ljava/lang/Exception; { :L11 .. :L12 } :L13
    .registers 13
    const/4 v0, 0
    const/4 v6, 2
    :L0
    invoke-virtual { p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getTid4Location()Ljava/lang/String;
    move-result-object v4
    if-eqz v4, :L1
    invoke-virtual { v4 }, Ljava/lang/String;->length()I
    move-result v1
    if-nez v1, :L3
    :L1
    const-string/jumbo v1, "getOtpNum tid is null"
    invoke-virtual { p0, v1 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    :L2
    return-object v0
    :L3
    const-string/jumbo v2, "newFacePayOtpSharedDataStore"
    iget-object v1, p0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->e:Landroid/content/Context;
    invoke-static { v1, v4, v2 }, Lcom/alipay/mobile/security/otp/service/OtpShareStore;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    new-instance v3, Ljava/lang/StringBuilder;
    const-string/jumbo v5, "\u83b7\u53d6\u672c\u5730\u52a0\u5bc6\u7684\u79cd\u5b501 encryptedSeed ="
    invoke-direct { v3, v5 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v3, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { p0, v3 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    if-eqz v1, :L4
    const-string/jumbo v3, ""
    invoke-virtual { v3, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L15
    :L4
    const-string/jumbo v2, "facePayOtpSharedDataStore"
    iget-object v1, p0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->e:Landroid/content/Context;
    invoke-static { v1, v4, v2 }, Lcom/alipay/mobile/security/otp/service/OtpShareStore;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    move-object v3, v2
    move-object v2, v1
    :L5
    new-instance v1, Ljava/lang/StringBuilder;
    const-string/jumbo v5, "\u83b7\u53d6\u672c\u5730\u52a0\u5bc6\u7684\u79cd\u5b502 encryptedSeed ="
    invoke-direct { v1, v5 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string/jumbo v5, " settingInfo="
    invoke-virtual { v1, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { p0, v1 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    if-eqz v2, :L14
    const-string/jumbo v1, ""
    invoke-virtual { v1, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :L14
    invoke-virtual { v4 }, Ljava/lang/String;->hashCode()I
    move-result v1
    invoke-static { v1 }, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v1
    const-string/jumbo v4, "facePayOtpSharedDataStore"
    invoke-virtual { v3, v4 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L6
    invoke-static { }, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;
    move-result-object v1
    invoke-virtual { v1 }, Lcom/alipay/mobile/common/info/DeviceInfo;->getImei()Ljava/lang/String;
    move-result-object v1
    :L6
    invoke-static { v2, v1 }, Lcom/alipay/mobile/security/otp/service/OtpSeedCryptor;->decryptOtpSeed(Ljava/lang/String;Ljava/lang/String;)[B
    move-result-object v1
    :L7
    if-eqz v1, :L10
    array-length v2, v1
    if-le v2, v6, :L10
    const/4 v3, 2
    new-array v3, v3, [B
    const/4 v4, 0
    const/4 v5, 0
    const/4 v6, 2
    invoke-static { v1, v4, v3, v5, v6 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    const/4 v4, 2
    new-array v4, v4, [B
    add-int/lit8 v2, v2, -2
    const/4 v5, 0
    const/4 v6, 2
    invoke-static { v1, v2, v4, v5, v6 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    new-instance v1, Ljava/lang/StringBuilder;
    const-string/jumbo v2, "getSimpleSeed() startBits="
    invoke-direct { v1, v2 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { p0, v1 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    new-instance v1, Ljava/lang/StringBuilder;
    const-string/jumbo v2, "getSimpleSeed() endBits="
    invoke-direct { v1, v2 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { p0, v1 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    new-instance v1, Ljava/text/SimpleDateFormat;
    const-string/jumbo v2, "yyyyMMddHHmmss"
    invoke-direct { v1, v2 }, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    invoke-virtual { p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getServerTimeDiff()Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v5
    if-nez v5, :L11
    new-instance v5, Ljava/util/Date;
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v6
    invoke-static { v2 }, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    move-result-wide v8
    const-wide/16 v10, 1000
    mul-long/2addr v8, v10
    add-long/2addr v6, v8
    invoke-direct { v5, v6, v7 }, Ljava/util/Date;-><init>(J)V
    invoke-virtual { v1, v5 }, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    move-result-object v1
    :L8
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-static { v3 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->bytesToHexString([B)Ljava/lang/String;
    move-result-object v3
    invoke-static { v3 }, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v3
    invoke-direct { v5, v3 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    const/16 v3, 45
    invoke-virtual { v5, v3 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-static { v4 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->bytesToHexString([B)Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    const/16 v4, 45
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    const/16 v3, 45
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :L9
    move-result-object v0
    :L10
    new-instance v1, Ljava/lang/StringBuilder;
    const-string/jumbo v2, "getSimpleSeed() seed="
    invoke-direct { v1, v2 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { p0, v1 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    goto/16 :L2
    :L11
    new-instance v5, Ljava/util/Date;
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v6
    invoke-direct { v5, v6, v7 }, Ljava/util/Date;-><init>(J)V
    invoke-virtual { v1, v5 }, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :L12
    move-result-object v1
    goto :L8
    :L13
    move-exception v1
    invoke-static { }, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    move-result-object v2
    const-string/jumbo v3, "getSimpleSeed"
    invoke-interface { v2, v3, v1 }, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    goto :L10
    :L14
    move-object v1, v0
    goto/16 :L7
    :L15
    move-object v3, v2
    move-object v2, v1
    goto/16 :L5
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    sget-object v1, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->n:Ljava/lang/String;
    invoke-interface { v0, v1, p2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    sget-object v1, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->o:Ljava/lang/String;
    invoke-interface { v0, v1, p3 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    sget-object v1, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->p:Ljava/lang/String;
    invoke-interface { v0, v1, p4 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static { }, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;
    move-result-object v1
    sget-object v2, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->f:Ljava/lang/String;
    invoke-interface { v1, v2, p0, p1, v0 }, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    return-void
.end method

.method private a(Ljava/lang/String;[BLjava/lang/String;)V
    .catch Ljava/lang/Exception; { :L0 .. :L7 } :L8
    .registers 18
    :L0
    const-string/jumbo v1, "start logGetOtp()"
    invoke-virtual { p0, v1 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    new-instance v5, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    invoke-direct { v5 }, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V
    const-string/jumbo v1, "OnsiteOtpService"
    invoke-virtual { v5, v1 }, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V
    const-string/jumbo v1, "GenBarNum"
    invoke-virtual { v5, v1 }, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V
    const-string/jumbo v1, "UC-FFC-150303-07"
    invoke-virtual { v5, v1 }, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V
    invoke-virtual { v5, p1 }, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V
    invoke-virtual { p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    move-result-object v3
    const/4 v2, 0
    const/4 v1, 0
    if-eqz p2, :L1
    invoke-static/range { p2 .. p2 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->bytesToHexString([B)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { p0, v1 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->stringToFormatStr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    :L1
    if-eqz v3, :L4
    invoke-virtual { v3 }, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { p0, v2 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getIndex(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    if-eqz v3, :L9
    invoke-virtual { v3 }, Ljava/lang/String;->length()I
    move-result v4
    const/4 v6, 5
    if-le v4, v6, :L9
    invoke-virtual { v3 }, Ljava/lang/String;->length()I
    move-result v4
    add-int/lit8 v4, v4, -5
    invoke-virtual { v3, v4 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object v3
    move-object v4, v3
    :L2
    if-eqz v1, :L4
    new-instance v3, Ljava/text/SimpleDateFormat;
    const-string/jumbo v6, "yyyyMMddHHmmss"
    invoke-direct { v3, v6 }, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    invoke-virtual { p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getServerTimeDiff()Ljava/lang/String;
    move-result-object v6
    invoke-static { v6 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v7
    if-nez v7, :L6
    new-instance v7, Ljava/util/Date;
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v8
    invoke-static { v6 }, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    move-result-wide v10
    const-wide/16 v12, 1000
    mul-long/2addr v10, v12
    add-long/2addr v8, v10
    invoke-direct { v7, v8, v9 }, Ljava/util/Date;-><init>(J)V
    invoke-virtual { v3, v7 }, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    move-result-object v3
    :L3
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-static { v1 }, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v1
    invoke-direct { v7, v1 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    const/16 v1, 45
    invoke-virtual { v7, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    const/16 v6, 45
    invoke-virtual { v1, v6 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    const/16 v3, 45
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    :L4
    invoke-virtual { v5, p1 }, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V
    invoke-virtual { v5, v2 }, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V
    invoke-virtual { v5, v1 }, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V
    const-string/jumbo v3, "hexExtInfo"
    move-object/from16 v0, p3
    invoke-virtual { v5, v3, v0 }, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static { }, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;
    move-result-object v3
    invoke-interface { v3, v5 }, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    new-instance v3, Ljava/lang/StringBuilder;
    const-string/jumbo v4, "otp="
    invoke-direct { v3, v4 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    const-string/jumbo v4, ";userId="
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string/jumbo v3, ";seed="
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string/jumbo v2, ";hexExtInfo="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    move-object/from16 v0, p3
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { p0, v1 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    :L5
    return-void
    :L6
    new-instance v7, Ljava/util/Date;
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v8
    invoke-direct { v7, v8, v9 }, Ljava/util/Date;-><init>(J)V
    invoke-virtual { v3, v7 }, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :L7
    move-result-object v3
    goto/16 :L3
    :L8
    move-exception v1
    invoke-static { }, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    move-result-object v2
    const-string/jumbo v3, "logGetOtp"
    invoke-interface { v2, v3, v1 }, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    goto :L5
    :L9
    move-object v4, v3
    goto/16 :L2
.end method

.method private static a(Ljava/lang/String;)[B
    .catch Ljava/security/NoSuchAlgorithmException; { :L0 .. :L1 } :L4
    .catch Ljava/io/UnsupportedEncodingException; { :L0 .. :L1 } :L6
    .catch Ljava/security/NoSuchAlgorithmException; { :L2 .. :L3 } :L9
    .catch Ljava/io/UnsupportedEncodingException; { :L2 .. :L3 } :L8
    .registers 6
    const/4 v1, 0
    :L0
    const-string/jumbo v0, "SHA1"
    invoke-static { v0 }, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :L1
    move-result-object v0
    :L2
    invoke-virtual { v0 }, Ljava/security/MessageDigest;->reset()V
    const-string/jumbo v1, "UTF-8"
    invoke-virtual { p0, v1 }, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/security/MessageDigest;->update([B)V
    :L3
    invoke-virtual { v0 }, Ljava/security/MessageDigest;->digest()[B
    move-result-object v0
    return-object v0
    :L4
    move-exception v0
    move-object v4, v0
    move-object v0, v1
    move-object v1, v4
    :L5
    invoke-static { }, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    move-result-object v2
    const-string/jumbo v3, "StackTrace"
    invoke-interface { v2, v3, v1 }, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    goto :L3
    :L6
    move-exception v0
    move-object v4, v0
    move-object v0, v1
    move-object v1, v4
    :L7
    invoke-static { }, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    move-result-object v2
    const-string/jumbo v3, "StackTrace"
    invoke-interface { v2, v3, v1 }, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    goto :L3
    :L8
    move-exception v1
    goto :L7
    :L9
    move-exception v1
    goto :L5
.end method

.method public final static bytesToHexString([B)Ljava/lang/String;
    .registers 7
    const/4 v1, 0
    new-instance v2, Ljava/lang/StringBuffer;
    array-length v0, p0
    invoke-direct { v2, v0 }, Ljava/lang/StringBuffer;-><init>(I)V
    move v0, v1
    :L0
    array-length v3, p0
    if-lt v0, v3, :L1
    invoke-virtual { v2 }, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
    :L1
    aget-byte v3, p0, v0
    and-int/lit16 v3, v3, 255
    invoke-static { v3 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/String;->length()I
    move-result v4
    const/4 v5, 2
    if-ge v4, v5, :L2
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
    :L2
    invoke-virtual { v3 }, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    add-int/lit8 v0, v0, 1
    goto :L0
.end method

.method public static isDelSEDecodeEndBehaviour()Z
    .registers 1
    const/4 v0, 1
    return v0
.end method

.method protected checkHEX(Ljava/lang/String;)Z
    .registers 6
    const/4 v1, 0
    move v0, v1
    :L0
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result v2
    if-lt v0, v2, :L2
    const/4 v1, 1
    :L1
    return v1
    :L2
    invoke-virtual { p1, v0 }, Ljava/lang/String;->charAt(I)C
    move-result v2
    const-string/jumbo v3, "0123456789abcdef"
    invoke-static { v2, v3 }, Lcom/alipay/mobile/security/otp/service/OtpSeedCryptor;->getIndexOfChar(CLjava/lang/String;)B
    move-result v2
    const/4 v3, -1
    if-ne v2, v3, :L3
    const-string/jumbo v0, "\u68c0\u67e5\u51fa\u79cd\u5b50\u4e0d\u662f\u5341\u516d\u8fdb\u5236\u6570\u636e"
    invoke-virtual { p0, v0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    goto :L1
    :L3
    add-int/lit8 v0, v0, 1
    goto :L0
.end method

.method protected checkTid(Ljava/lang/String;)V
    .catch Ljava/lang/Exception; { :L0 .. :L1 } :L4
    .registers 7
    const-string/jumbo v0, "check tid start"
    invoke-virtual { p0, v0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    invoke-static { }, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    move-result-object v0
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;
    invoke-virtual { v1 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v1
    invoke-interface { v0, v1 }, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;
    const-class v1, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;
    invoke-virtual { v0, v1 }, Lcom/alipay/mobile/framework/service/common/RpcService;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;
    const/4 v1, 0
    new-instance v2, Lcom/alipay/livetradeprod/core/model/VerifyDeviceReq;
    invoke-direct { v2 }, Lcom/alipay/livetradeprod/core/model/VerifyDeviceReq;-><init>()V
    invoke-virtual { p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getMspDeviceInfoBean()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;
    move-result-object v3
    if-eqz v3, :L0
    invoke-virtual { v3 }, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getMspkey()Ljava/lang/String;
    move-result-object v4
    iput-object v4, v2, Lcom/alipay/livetradeprod/core/model/VerifyDeviceReq;->clientKey:Ljava/lang/String;
    invoke-virtual { v3 }, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImei()Ljava/lang/String;
    move-result-object v4
    iput-object v4, v2, Lcom/alipay/livetradeprod/core/model/VerifyDeviceReq;->imei:Ljava/lang/String;
    invoke-virtual { v3 }, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImsi()Ljava/lang/String;
    move-result-object v3
    iput-object v3, v2, Lcom/alipay/livetradeprod/core/model/VerifyDeviceReq;->imsi:Ljava/lang/String;
    iput-object p1, v2, Lcom/alipay/livetradeprod/core/model/VerifyDeviceReq;->tid:Ljava/lang/String;
    invoke-virtual { p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    move-result-object v3
    invoke-virtual { v3 }, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;
    move-result-object v3
    iput-object v3, v2, Lcom/alipay/livetradeprod/core/model/VerifyDeviceReq;->userId:Ljava/lang/String;
    :L0
    const-string/jumbo v3, "sendTodoMessage verifyDevice "
    invoke-virtual { p0, v3 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    invoke-interface { v0, v2 }, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;->verifyDevice(Lcom/alipay/livetradeprod/core/model/VerifyDeviceReq;)Lcom/alipay/livetradeprod/core/model/VerifyDeviceRes;
    move-result-object v1
    const-string/jumbo v0, "sendTodoMessage verifyDevice "
    invoke-virtual { p0, v0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    :L1
    if-eqz v1, :L6
    iget-boolean v0, v1, Lcom/alipay/livetradeprod/core/model/VerifyDeviceRes;->success:Z
    if-eqz v0, :L6
    iget-boolean v0, v1, Lcom/alipay/livetradeprod/core/model/VerifyDeviceRes;->verifyDevice:Z
    if-eqz v0, :L5
    const-string/jumbo v0, "sendTodoMessage \u9a8c\u8bc1tid\u77ed\u4fe1\u4e0a\u4e0b\u884c\u6210\u529f\uff0c\u79cd\u5b50\u521d\u59cb\u5316\u5f00\u59cb"
    invoke-virtual { p0, v0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    invoke-virtual { p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->initSeed()V
    :L2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    iget-object v2, v1, Lcom/alipay/livetradeprod/core/model/VerifyDeviceRes;->resultCode:Ljava/lang/String;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p0, v0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    iget-object v2, v1, Lcom/alipay/livetradeprod/core/model/VerifyDeviceRes;->resultDes:Ljava/lang/String;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p0, v0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    iget-boolean v1, v1, Lcom/alipay/livetradeprod/core/model/VerifyDeviceRes;->verifyDevice:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p0, v0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    :L3
    return-void
    :L4
    move-exception v0
    const-string/jumbo v2, "sendTodoMessage verifyDevice\u5f02\u5e38"
    invoke-virtual { p0, v2 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    invoke-static { }, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    move-result-object v2
    const-string/jumbo v3, "StackTrace"
    invoke-interface { v2, v3, v0 }, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    goto :L1
    :L5
    const-string/jumbo v0, "sendTodoMessage \u9a8c\u8bc1tid\u5931\u8d25\uff0c\u53d1\u9001todo\u6d88\u606f \u670d\u52a1\u7aef\u53d1\u9001todo\u6d88\u606f"
    invoke-virtual { p0, v0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    goto :L2
    :L6
    const-string/jumbo v0, "sendTodoMessage \u9a8c\u8bc1tid\u5931\u8d25\uff0c\u53d1\u9001todo\u6d88\u606f"
    invoke-virtual { p0, v0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    goto :L3
.end method

.method public deleteIndex(Ljava/lang/String;)V
    .registers 6
    if-eqz p1, :L0
    const-string/jumbo v0, "deleteIndex"
    invoke-virtual { p0, v0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    iget-object v0, p0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->e:Landroid/content/Context;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-static { p1 }, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v2
    invoke-direct { v1, v2 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    const-string/jumbo v2, "+"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    const-string/jumbo v2, ""
    const-string/jumbo v3, "newFacePayOtpSharedDataStore"
    invoke-static { v0, v1, v2, v3 }, Lcom/alipay/mobile/security/otp/service/OtpShareStore;->putStringOfKeyPrefix(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    iget-object v0, p0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->e:Landroid/content/Context;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-static { p1 }, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v2
    invoke-direct { v1, v2 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    const-string/jumbo v2, "+"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    const-string/jumbo v2, ""
    const-string/jumbo v3, "facePayOtpSharedDataStore"
    invoke-static { v0, v1, v2, v3 }, Lcom/alipay/mobile/security/otp/service/OtpShareStore;->putStringOfKeyPrefix(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :L0
    return-void
.end method

.method public deleteSeed()V
    .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
    .registers 16
    invoke-virtual { p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p0, v0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getIndex(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getServerTimeDiff()Ljava/lang/String;
    move-result-object v1
    sget-object v2, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l:Ljava/lang/String;
    sget-object v3, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->m:Ljava/lang/String;
    invoke-direct { p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->a()Ljava/lang/String;
    move-result-object v4
    invoke-static { v2, v3, v4, v0, v1 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    const-string/jumbo v0, "deleteSeed"
    invoke-virtual { p0, v0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    iget-object v0, p0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->e:Landroid/content/Context;
    invoke-virtual { p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getTid()Ljava/lang/String;
    move-result-object v1
    const-string/jumbo v2, ""
    const-string/jumbo v3, "newFacePayOtpSharedDataStore"
    invoke-static { v0, v1, v2, v3 }, Lcom/alipay/mobile/security/otp/service/OtpShareStore;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    iget-object v0, p0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->e:Landroid/content/Context;
    invoke-virtual { p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getTid()Ljava/lang/String;
    move-result-object v1
    const-string/jumbo v2, ""
    const-string/jumbo v3, "facePayOtpSharedDataStore"
    invoke-static { v0, v1, v2, v3 }, Lcom/alipay/mobile/security/otp/service/OtpShareStore;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :L0
    invoke-virtual { p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    move-result-object v0
    invoke-interface { v0 }, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;
    move-result-object v0
    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;
    const-string/jumbo v2, "kf"
    const-string/jumbo v3, ""
    const/4 v4, 0
    const/4 v5, 0
    const/4 v6, 0
    const/4 v7, 0
    const-string/jumbo v8, "SE"
    const-string/jumbo v9, ""
    invoke-virtual { p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    move-result-object v10
    invoke-virtual { v10 }, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;
    move-result-object v10
    const-string/jumbo v11, ""
    const/4 v12, 5
    new-array v12, v12, [Ljava/lang/String;
    const/4 v13, 0
    const-string/jumbo v14, "kf"
    aput-object v14, v12, v13
    const/4 v13, 1
    const-string/jumbo v14, "SEDeleteEnd"
    aput-object v14, v12, v13
    const/4 v13, 2
    const-string/jumbo v14, ""
    aput-object v14, v12, v13
    const/4 v13, 3
    const-string/jumbo v14, "y"
    aput-object v14, v12, v13
    const/4 v13, 4
    const-string/jumbo v14, "alipayclient"
    aput-object v14, v12, v13
    invoke-static/range { v0 .. v12 }, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :L1
    invoke-virtual { p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p0, v0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->deleteIndex(Ljava/lang/String;)V
    return-void
    :L2
    move-exception v0
    invoke-static { }, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    move-result-object v1
    const-string/jumbo v2, "StackTrace"
    invoke-interface { v1, v2, v0 }, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    goto :L1
.end method

.method protected encrypteForBarcode(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    const/4 v7, 6
    const/16 v6, 10
    const/4 v1, 0
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result v0
    new-array v2, v0, [I
    move v0, v1
    :L0
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result v3
    if-lt v0, v3, :L2
    new-array v0, v7, [I
    new-array v3, v6, [I
    new-array v4, v6, [I
    const/4 v5, 2
    invoke-static { v2, v5, v3, v1, v6 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    const/16 v5, 12
    invoke-static { v2, v5, v0, v1, v7 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :L1
    const/16 v2, 9
    if-le v1, v2, :L3
    new-instance v1, Ljava/lang/StringBuilder;
    const-string/jumbo v2, "28"
    invoke-direct { v1, v2 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { p0, v4 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->intArrayToString([I)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { p0, v0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->intArrayToString([I)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    new-instance v1, Ljava/lang/StringBuilder;
    const-string/jumbo v2, "\u6761\u7801 \u52a0\u5bc6\u524d="
    invoke-direct { v1, v2 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string/jumbo v2, "   \u52a0\u5bc6\u540e="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    return-object v0
    :L2
    add-int/lit8 v3, v0, 1
    invoke-virtual { p1, v0, v3 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v3
    invoke-static { v3 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v3
    aput v3, v2, v0
    add-int/lit8 v0, v0, 1
    goto :L0
    :L3
    aget v2, v3, v1
    mul-int/lit8 v2, v2, 107
    rem-int/lit8 v5, v1, 6
    aget v5, v0, v5
    add-int/2addr v2, v5
    rem-int/lit8 v2, v2, 10
    aput v2, v4, v1
    add-int/lit8 v1, v1, 1
    goto :L1
.end method

.method public getBarcodeOtp()Ljava/lang/String;
    .registers 2
    const/4 v0, 0
    return-object v0
.end method

.method public getDynamicOtp(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    const/4 v0, 0
    invoke-virtual { p0, p1, v0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getDynamicOtp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public getDynamicOtp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 21
    const-string/jumbo v2, "\u83b7\u53d6otp\u52a8\u6001\u6570\u636e"
    move-object/from16 v0, p0
    invoke-virtual { v0, v2 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    const/4 v15, 0
    move-object/from16 v0, p0
    move-object/from16 v1, p2
    invoke-virtual { v0, v1 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getOtpNum(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    const-string/jumbo v3, "\u83b7\u53d6otp\u52a8\u6001\u6570\u636edynamicNum "
    move-object/from16 v0, p0
    invoke-virtual { v0, v3 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    if-eqz v2, :L6
    const-string/jumbo v3, ""
    invoke-virtual { v3, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-nez v3, :L6
    new-instance v3, Ljava/lang/StringBuilder;
    const-string/jumbo v4, "\u83b7\u53d6otp\u52a8\u6001\u6570\u636e dynamicNum="
    invoke-direct { v3, v4 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    move-object/from16 v0, p0
    invoke-virtual { v0, v3 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    invoke-virtual/range { p0 .. p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    move-result-object v3
    if-nez v3, :L1
    const-string/jumbo v2, "getDynamicOtp logonId is  null "
    move-object/from16 v0, p0
    invoke-virtual { v0, v2 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    const/4 v11, 0
    :L0
    return-object v11
    :L1
    invoke-virtual/range { p0 .. p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    move-result-object v3
    invoke-virtual { v3 }, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;
    move-result-object v3
    move-object/from16 v0, p0
    invoke-virtual { v0, v3 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getIndex(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    const-string/jumbo v4, "\u83b7\u53d6otp\u52a8\u6001\u6570\u636e index "
    move-object/from16 v0, p0
    invoke-virtual { v0, v4 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    if-eqz v3, :L5
    const-string/jumbo v4, ""
    invoke-virtual { v4, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-nez v4, :L5
    new-instance v4, Ljava/lang/StringBuilder;
    const-string/jumbo v5, "\u83b7\u53d6otp\u52a8\u6001\u6570\u636e index="
    invoke-direct { v4, v5 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v4, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    move-object/from16 v0, p0
    invoke-virtual { v0, v4 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    sget-object v4, Lcom/alipay/mobile/security/otp/OtpManager;->OTP_BARCODE:Ljava/lang/String;
    move-object/from16 v0, p1
    invoke-virtual { v4, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :L4
    const-string/jumbo v4, "%010d"
    const/4 v5, 1
    new-array v5, v5, [Ljava/lang/Object;
    const/4 v6, 0
    invoke-static { v3 }, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    move-result-object v3
    aput-object v3, v5, v6
    invoke-static { v4, v5 }, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v3
    const-string/jumbo v4, "%06d"
    const/4 v5, 1
    new-array v5, v5, [Ljava/lang/Object;
    const/4 v6, 0
    invoke-static { v2 }, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    move-result-object v2
    aput-object v2, v5, v6
    invoke-static { v4, v5 }, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v2
    new-instance v4, Ljava/lang/StringBuilder;
    const-string/jumbo v5, "28"
    invoke-direct { v4, v5 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v4, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    move-object/from16 v0, p0
    invoke-virtual { v0, v2 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->encrypteForBarcode(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v11
    :L2
    invoke-virtual/range { p0 .. p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    move-result-object v2
    invoke-interface { v2 }, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;
    move-result-object v2
    sget-object v3, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;
    const-string/jumbo v4, "kf"
    const/4 v5, 0
    const/4 v6, 0
    const/4 v7, 0
    const/4 v8, 0
    const-string/jumbo v10, "OTP"
    invoke-virtual/range { p0 .. p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    move-result-object v9
    invoke-virtual { v9 }, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;
    move-result-object v12
    const-string/jumbo v13, "-"
    const/4 v9, 5
    new-array v14, v9, [Ljava/lang/String;
    const/4 v9, 0
    const-string/jumbo v15, "kf"
    aput-object v15, v14, v9
    const/4 v9, 1
    const-string/jumbo v15, "applyid"
    aput-object v15, v14, v9
    const/4 v9, 2
    const-string/jumbo v15, ""
    aput-object v15, v14, v9
    const/4 v9, 3
    const-string/jumbo v15, "y"
    aput-object v15, v14, v9
    const/4 v9, 4
    const-string/jumbo v15, "alipayclient"
    aput-object v15, v14, v9
    move-object/from16 v9, p1
    invoke-static/range { v2 .. v14 }, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :L3
    new-instance v2, Ljava/lang/StringBuilder;
    const-string/jumbo v3, "\u83b7\u53d6otp\u52a8\u6001\u6570\u636e \u8fd4\u56de\u6570\u636e\uff1a"
    invoke-direct { v2, v3 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v2, v11 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    move-object/from16 v0, p0
    invoke-virtual { v0, v2 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    goto/16 :L0
    :L4
    const-string/jumbo v4, "0"
    invoke-static { v3 }, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    move-result-wide v5
    invoke-static { v5, v6 }, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;
    move-result-object v3
    invoke-static { v2 }, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    move-result-wide v5
    invoke-static { v5, v6 }, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;
    move-result-object v2
    invoke-static { v4, v3, v2 }, Lcom/alipay/mobile/security/otp/service/AlipayIDCode;->formTidUidIndexAndOtp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v11
    sget-object v2, Lcom/alipay/mobile/security/otp/OtpManager;->OTP_NFC:Ljava/lang/String;
    move-object/from16 v0, p1
    invoke-virtual { v2, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L2
    new-instance v2, Ljava/lang/StringBuilder;
    const-string/jumbo v3, "nfc"
    invoke-direct { v2, v3 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v2, v11 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v11
    goto/16 :L2
    :L5
    const-string/jumbo v2, "\u83b7\u53d6otp\u52a8\u6001\u6570\u636e index =null"
    move-object/from16 v0, p0
    invoke-virtual { v0, v2 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    invoke-static { }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->isDelSEDecodeEndBehaviour()Z
    move-result v2
    if-nez v2, :L7
    invoke-virtual/range { p0 .. p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    move-result-object v2
    invoke-interface { v2 }, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;
    move-result-object v2
    sget-object v3, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;
    const-string/jumbo v4, "kf"
    new-instance v5, Ljava/lang/StringBuilder;
    const-string/jumbo v6, "\u80fd\u591f\u83b7\u53d6\u5230seed\uff0c\u4f46\u662f\u6ca1\u6709 index tid="
    invoke-direct { v5, v6 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual/range { p0 .. p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getTid()Ljava/lang/String;
    move-result-object v6
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    const/4 v6, 0
    const/4 v7, 0
    const/4 v8, 0
    const/4 v9, 0
    const-string/jumbo v10, ""
    const-string/jumbo v11, ""
    invoke-virtual/range { p0 .. p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    move-result-object v12
    invoke-virtual { v12 }, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;
    move-result-object v12
    const-string/jumbo v13, "-"
    const/4 v14, 5
    new-array v14, v14, [Ljava/lang/String;
    const/16 v16, 0
    const-string/jumbo v17, "kf"
    aput-object v17, v14, v16
    const/16 v16, 1
    const-string/jumbo v17, "SEDecodeEnd"
    aput-object v17, v14, v16
    const/16 v16, 2
    const-string/jumbo v17, ""
    aput-object v17, v14, v16
    const/16 v16, 3
    const-string/jumbo v17, "n"
    aput-object v17, v14, v16
    const/16 v16, 4
    const-string/jumbo v17, "alipayclient"
    aput-object v17, v14, v16
    invoke-static/range { v2 .. v14 }, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    move-object v11, v15
    goto/16 :L3
    :L6
    const-string/jumbo v2, "\u83b7\u53d6otp\u52a8\u6001\u6570\u636edynamicNum =null"
    move-object/from16 v0, p0
    invoke-virtual { v0, v2 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    :L7
    move-object v11, v15
    goto/16 :L3
.end method

.method public getDynamicOtpCode(Ljava/lang/String;)Lcom/alipay/mobile/security/otp/OtpResult;
    .registers 4
    new-instance v0, Lcom/alipay/mobile/security/otp/OtpResult;
    invoke-direct { v0 }, Lcom/alipay/mobile/security/otp/OtpResult;-><init>()V
    const-string/jumbo v1, "otpcode"
    iput-object v1, v0, Lcom/alipay/mobile/security/otp/OtpResult;->type:Ljava/lang/String;
    invoke-virtual { p0, p1 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getDynamicOtp(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    iput-object v1, v0, Lcom/alipay/mobile/security/otp/OtpResult;->value:Ljava/lang/String;
    return-object v0
.end method

.method public getIndex(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    const/4 v1, 0
    if-eqz p1, :L2
    const-string/jumbo v0, "getIndex"
    invoke-virtual { p0, v0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    iget-object v0, p0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->e:Landroid/content/Context;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-static { p1 }, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v3
    invoke-direct { v2, v3 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    const-string/jumbo v3, "+"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getTid()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    const-string/jumbo v3, "newFacePayOtpSharedDataStore"
    invoke-static { v0, v2, v3 }, Lcom/alipay/mobile/security/otp/service/OtpShareStore;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :L1
    const-string/jumbo v2, ""
    invoke-virtual { v2, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-nez v2, :L1
    :L0
    return-object v0
    :L1
    move-object v0, v1
    goto :L0
    :L2
    move-object v0, v1
    goto :L0
.end method

.method protected getMobileDeviceFacade()Lcom/alipay/mobilesecurity/biz/gw/service/authcenter/MobileDeviceFacade;
    .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
    .registers 4
    :L0
    invoke-static { }, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    move-result-object v0
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;
    invoke-virtual { v1 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v1
    invoke-interface { v0, v1 }, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;
    const-class v1, Lcom/alipay/mobilesecurity/biz/gw/service/authcenter/MobileDeviceFacade;
    invoke-virtual { v0, v1 }, Lcom/alipay/mobile/framework/service/common/RpcService;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/authcenter/MobileDeviceFacade;
    :L1
    return-object v0
    :L2
    move-exception v0
    invoke-static { }, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    move-result-object v1
    const-string/jumbo v2, "StackTrace"
    invoke-interface { v1, v2, v0 }, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    const/4 v0, 0
    goto :L1
.end method

.method protected getMspDeviceInfoBean()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;
    .catch Ljava/lang/Exception; { :L0 .. :L1 } :L3
    .registers 4
    :L0
    invoke-static { }, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    move-result-object v0
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;
    invoke-virtual { v1 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v1
    invoke-interface { v0, v1 }, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;
    move-result-object v0
    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;
    invoke-virtual { v0 }, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryCertification()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;
    :L1
    move-result-object v0
    :L2
    return-object v0
    :L3
    move-exception v0
    invoke-static { }, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    move-result-object v1
    const-string/jumbo v2, "StackTrace"
    invoke-interface { v1, v2, v0 }, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    const/4 v0, 0
    goto :L2
.end method

.method public getOtpNum()Ljava/lang/String;
    .registers 2
    const/4 v0, 0
    invoke-virtual { p0, v0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getOtpNum(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public getOtpNum(Ljava/lang/String;)Ljava/lang/String;
    .catch Ljava/lang/Exception; { :L10 .. :L13 } :L21
    .catch Ljava/lang/Exception; { :L14 .. :L15 } :L23
    .catch Ljava/lang/Exception; { :L15 .. :L16 } :L21
    .catch Ljava/lang/Exception; { :L17 .. :L19 } :L25
    .catch Ljava/lang/Exception; { :L19 .. :L20 } :L21
    .catch Ljava/lang/Exception; { :L24 .. :L26 } :L21
    .registers 25
    new-instance v2, Ljava/lang/StringBuilder;
    const-string/jumbo v3, "getOtpNum extraInfo"
    invoke-direct { v2, v3 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    move-object/from16 v0, p1
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    move-object/from16 v0, p0
    invoke-virtual { v0, v2 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    invoke-virtual/range { p0 .. p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getTid4Location()Ljava/lang/String;
    move-result-object v17
    if-eqz v17, :L0
    invoke-virtual/range { v17 .. v17 }, Ljava/lang/String;->length()I
    move-result v2
    if-nez v2, :L2
    :L0
    const-string/jumbo v2, "getOtpNum tid is null"
    move-object/from16 v0, p0
    invoke-virtual { v0, v2 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    const/4 v2, 0
    const/4 v3, 0
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    invoke-direct { v0, v2, v3, v1 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->a(Ljava/lang/String;[BLjava/lang/String;)V
    const/4 v2, 0
    :L1
    return-object v2
    :L2
    const/4 v4, 0
    const-string/jumbo v3, "newFacePayOtpSharedDataStore"
    move-object/from16 v0, p0
    iget-object v2, v0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->e:Landroid/content/Context;
    move-object/from16 v0, v17
    invoke-static { v2, v0, v3 }, Lcom/alipay/mobile/security/otp/service/OtpShareStore;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    new-instance v5, Ljava/lang/StringBuilder;
    const-string/jumbo v6, "\u83b7\u53d6\u672c\u5730\u52a0\u5bc6\u7684\u79cd\u5b501 encryptedSeed ="
    invoke-direct { v5, v6 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v5, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    move-object/from16 v0, p0
    invoke-virtual { v0, v5 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    if-eqz v2, :L3
    const-string/jumbo v5, ""
    invoke-virtual { v5, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-eqz v5, :L31
    :L3
    const-string/jumbo v3, "facePayOtpSharedDataStore"
    move-object/from16 v0, p0
    iget-object v2, v0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->e:Landroid/content/Context;
    move-object/from16 v0, v17
    invoke-static { v2, v0, v3 }, Lcom/alipay/mobile/security/otp/service/OtpShareStore;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    move-object v5, v2
    move-object v15, v3
    :L4
    new-instance v2, Ljava/lang/StringBuilder;
    const-string/jumbo v3, "\u83b7\u53d6\u672c\u5730\u52a0\u5bc6\u7684\u79cd\u5b502 encryptedSeed ="
    invoke-direct { v2, v3 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v2, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string/jumbo v3, " settingInfo="
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2, v15 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    move-object/from16 v0, p0
    invoke-virtual { v0, v2 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    if-eqz v5, :L8
    const-string/jumbo v2, ""
    invoke-virtual { v2, v5 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-nez v2, :L8
    invoke-virtual/range { v17 .. v17 }, Ljava/lang/String;->hashCode()I
    move-result v2
    invoke-static { v2 }, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v2
    const-string/jumbo v3, "facePayOtpSharedDataStore"
    invoke-virtual { v15, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L5
    invoke-static { }, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;
    move-result-object v2
    invoke-virtual { v2 }, Lcom/alipay/mobile/common/info/DeviceInfo;->getImei()Ljava/lang/String;
    move-result-object v2
    :L5
    invoke-static { v5, v2 }, Lcom/alipay/mobile/security/otp/service/OtpSeedCryptor;->decryptOtpSeed(Ljava/lang/String;Ljava/lang/String;)[B
    move-result-object v16
    if-nez v16, :L30
    const-string/jumbo v2, "\u673a\u5bc6\u79cd\u5b50seed is null"
    move-object/from16 v0, p0
    invoke-virtual { v0, v2 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    invoke-static { }, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;
    move-result-object v2
    invoke-virtual { v2 }, Lcom/alipay/mobile/common/info/DeviceInfo;->getImei()Ljava/lang/String;
    move-result-object v6
    invoke-static { }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->isDelSEDecodeEndBehaviour()Z
    move-result v2
    if-nez v2, :L6
    invoke-virtual/range { p0 .. p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    move-result-object v2
    invoke-interface { v2 }, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;
    move-result-object v2
    sget-object v3, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;
    const-string/jumbo v4, "kf"
    new-instance v7, Ljava/lang/StringBuilder;
    const-string/jumbo v8, "\u89e3\u5bc6\u79cd\u5b50\u5931\u8d25\uff1anativeImei="
    invoke-direct { v7, v8 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v7, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    const-string/jumbo v7, " encryptedSeed="
    invoke-virtual { v6, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    invoke-virtual { v6, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    const/4 v6, 0
    const/4 v7, 0
    const/4 v8, 0
    const/4 v9, 0
    const-string/jumbo v10, "SE"
    const-string/jumbo v11, ""
    invoke-virtual/range { p0 .. p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    move-result-object v12
    invoke-virtual { v12 }, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;
    move-result-object v12
    const-string/jumbo v13, ""
    const/4 v14, 5
    new-array v14, v14, [Ljava/lang/String;
    const/16 v18, 0
    const-string/jumbo v19, "kf"
    aput-object v19, v14, v18
    const/16 v18, 1
    const-string/jumbo v19, "SEDecodeEnd"
    aput-object v19, v14, v18
    const/16 v18, 2
    const-string/jumbo v19, ""
    aput-object v19, v14, v18
    const/16 v18, 3
    const-string/jumbo v19, "n"
    aput-object v19, v14, v18
    const/16 v18, 4
    const-string/jumbo v19, "alipayclient"
    aput-object v19, v14, v18
    invoke-static/range { v2 .. v14 }, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :L6
    invoke-virtual/range { p0 .. p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->deleteSeed()V
    move-object/from16 v2, v16
    :L7
    if-nez v2, :L9
    const-string/jumbo v2, "getOtpNum seed is null"
    move-object/from16 v0, p0
    invoke-virtual { v0, v2 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    const/4 v2, 0
    const/4 v3, 0
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    invoke-direct { v0, v2, v3, v1 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->a(Ljava/lang/String;[BLjava/lang/String;)V
    const/4 v2, 0
    goto/16 :L1
    :L8
    const-string/jumbo v2, "getOtpNum encryptedSeed is null"
    move-object/from16 v0, p0
    invoke-virtual { v0, v2 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    move-object v2, v4
    goto :L7
    :L9
    if-eqz p1, :L29
    const-string/jumbo v3, ""
    move-object/from16 v0, p1
    invoke-virtual { v3, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-nez v3, :L29
    new-instance v3, Ljava/lang/StringBuilder;
    const-string/jumbo v4, "init seed: "
    invoke-direct { v3, v4 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-static { v2 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->bytesToHexString([B)Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    move-object/from16 v0, p0
    invoke-virtual { v0, v3 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    new-instance v3, Ljava/lang/StringBuilder;
    const-string/jumbo v4, "extraInfo : "
    invoke-direct { v3, v4 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    move-object/from16 v0, p1
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    move-object/from16 v0, p0
    invoke-virtual { v0, v3 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    invoke-static/range { p1 .. p1 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->a(Ljava/lang/String;)[B
    move-result-object v3
    array-length v4, v3
    array-length v5, v2
    add-int/2addr v4, v5
    new-array v4, v4, [B
    const/4 v5, 0
    const/4 v6, 0
    array-length v7, v2
    invoke-static { v2, v5, v4, v6, v7 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    const/4 v5, 0
    array-length v2, v2
    array-length v6, v3
    invoke-static { v3, v5, v4, v2, v6 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    new-instance v2, Ljava/lang/StringBuilder;
    const-string/jumbo v5, "extraBytes : "
    invoke-direct { v2, v5 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-static { v3 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->bytesToHexString([B)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    move-object/from16 v0, p0
    invoke-virtual { v0, v2 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    new-instance v2, Ljava/lang/StringBuilder;
    const-string/jumbo v3, "final seed :"
    invoke-direct { v2, v3 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-static { v4 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->bytesToHexString([B)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    move-object/from16 v0, p0
    invoke-virtual { v0, v2 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    :L10
    invoke-virtual/range { p0 .. p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getServerTimeDiff()Ljava/lang/String;
    move-result-object v5
    move-object/from16 v0, p0
    iget-object v2, v0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->e:Landroid/content/Context;
    const-string/jumbo v3, "interval"
    invoke-static { v2, v3, v15 }, Lcom/alipay/mobile/security/otp/service/OtpShareStore;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v6
    const-wide/16 v2, 30
    invoke-static { v6 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v7
    if-nez v7, :L28
    invoke-static { v6 }, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    move-result-wide v2
    move-wide/from16 v20, v2
    :L11
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    const-wide/16 v6, 1000
    div-long/2addr v2, v6
    invoke-static { v5 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v6
    if-nez v6, :L27
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    const-wide/16 v6, 1000
    div-long/2addr v2, v6
    invoke-static { v5 }, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    move-result-wide v6
    add-long/2addr v2, v6
    move-wide/from16 v18, v2
    :L12
    const-string/jumbo v2, "facePayOtpSharedDataStore"
    invoke-virtual { v15, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :L13
    move-result v2
    if-eqz v2, :L15
    :L14
    move-object/from16 v0, p0
    iget-object v2, v0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->e:Landroid/content/Context;
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-virtual/range { p0 .. p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    move-result-object v6
    invoke-virtual { v6 }, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;
    move-result-object v6
    invoke-static { v6 }, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v6
    invoke-direct { v3, v6 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    const-string/jumbo v6, "+"
    invoke-virtual { v3, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    move-object/from16 v0, v17
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static { v2, v3, v15 }, Lcom/alipay/mobile/security/otp/service/OtpShareStore;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    move-object/from16 v0, p0
    iget-object v3, v0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->e:Landroid/content/Context;
    const-string/jumbo v6, "interval"
    invoke-static/range { v20 .. v21 }, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    move-result-object v7
    const-string/jumbo v8, "newFacePayOtpSharedDataStore"
    invoke-static { v3, v6, v7, v8 }, Lcom/alipay/mobile/security/otp/service/OtpShareStore;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    move-object/from16 v0, p0
    iget-object v3, v0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->e:Landroid/content/Context;
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-virtual/range { p0 .. p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    move-result-object v7
    invoke-virtual { v7 }, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;
    move-result-object v7
    invoke-static { v7 }, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v7
    invoke-direct { v6, v7 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    const-string/jumbo v7, "+"
    invoke-virtual { v6, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    move-object/from16 v0, v17
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    invoke-virtual { v6 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    const-string/jumbo v7, "newFacePayOtpSharedDataStore"
    invoke-static { v3, v6, v2, v7 }, Lcom/alipay/mobile/security/otp/service/OtpShareStore;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    move-object/from16 v0, p0
    iget-object v2, v0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->e:Landroid/content/Context;
    const-string/jumbo v3, "timedeff"
    const-string/jumbo v6, "newFacePayOtpSharedDataStore"
    invoke-static { v2, v3, v5, v6 }, Lcom/alipay/mobile/security/otp/service/OtpShareStore;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static { v4 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->bytesToHexString([B)Ljava/lang/String;
    move-result-object v2
    new-instance v3, Ljava/lang/StringBuilder;
    const-string/jumbo v5, " strOtpSeedHex="
    invoke-direct { v3, v5 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    move-object/from16 v0, p0
    invoke-virtual { v0, v3 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    invoke-virtual/range { v17 .. v17 }, Ljava/lang/String;->hashCode()I
    move-result v3
    invoke-static { v3 }, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v3
    invoke-static { v2, v3 }, Lcom/alipay/mobile/security/otp/service/OtpSeedCryptor;->encryptOtpSeed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    new-instance v3, Ljava/lang/StringBuilder;
    const-string/jumbo v5, " decodeSeed="
    invoke-direct { v3, v5 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    move-object/from16 v0, p0
    invoke-virtual { v0, v3 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    move-object/from16 v0, p0
    iget-object v3, v0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->e:Landroid/content/Context;
    const-string/jumbo v5, "newFacePayOtpSharedDataStore"
    move-object/from16 v0, v17
    invoke-static { v3, v0, v2, v5 }, Lcom/alipay/mobile/security/otp/service/OtpShareStore;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    const-string/jumbo v2, "\u8001\u7684\u52a0\u5bc6\u6570\u636e\u6210\u529f\u8f6c\u6362\u5230\u65b0\u52a0\u5bc6\u6587\u4ef6\u4e2d"
    move-object/from16 v0, p0
    invoke-virtual { v0, v2 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    :L15
    move-object/from16 v0, p0
    iget-object v2, v0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->d:Lcom/alipay/mobile/security/senative/SE;
    invoke-virtual/range { p0 .. p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    move-result-object v3
    invoke-interface { v3 }, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;
    move-result-object v3
    div-long v5, v18, v20
    const/4 v7, 6
    invoke-virtual/range { v2 .. v7 }, Lcom/alipay/mobile/security/senative/SE;->nativeHOTP(Ljava/lang/Object;[BJI)Ljava/lang/String;
    :L16
    move-result-object v2
    :L17
    invoke-static { }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->isDelSEDecodeEndBehaviour()Z
    move-result v3
    if-nez v3, :L18
    invoke-virtual/range { p0 .. p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    move-result-object v3
    invoke-interface { v3 }, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;
    move-result-object v5
    sget-object v6, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;
    const-string/jumbo v7, "kf"
    invoke-static { v4 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->bytesToHexString([B)Ljava/lang/String;
    move-result-object v3
    move-object/from16 v0, p0
    invoke-virtual { v0, v3 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->stringToFormatStr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v8
    const/4 v9, 0
    const/4 v10, 0
    const/4 v11, 0
    const/4 v12, 0
    const-string/jumbo v13, "SE"
    const-string/jumbo v14, ""
    invoke-virtual/range { p0 .. p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    move-result-object v3
    invoke-virtual { v3 }, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;
    move-result-object v15
    const-string/jumbo v16, ""
    const/4 v3, 5
    new-array v0, v3, [Ljava/lang/String;
    move-object/from16 v17, v0
    const/4 v3, 0
    const-string/jumbo v22, "kf"
    aput-object v22, v17, v3
    const/4 v3, 1
    const-string/jumbo v22, "SEDecodeEnd"
    aput-object v22, v17, v3
    const/4 v3, 2
    const-string/jumbo v22, ""
    aput-object v22, v17, v3
    const/4 v3, 3
    const-string/jumbo v22, "y"
    aput-object v22, v17, v3
    const/4 v3, 4
    const-string/jumbo v22, "alipayclient"
    aput-object v22, v17, v3
    invoke-static/range { v5 .. v17 }, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :L18
    new-instance v3, Ljava/lang/StringBuilder;
    const-string/jumbo v5, "\u79cd\u5b50\u524d\u540e4\u4f4d\uff1a"
    invoke-direct { v3, v5 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-static { v4 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->bytesToHexString([B)Ljava/lang/String;
    move-result-object v5
    move-object/from16 v0, p0
    invoke-virtual { v0, v5 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->stringToFormatStr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v3, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    move-object/from16 v0, p0
    invoke-virtual { v0, v3 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    new-instance v3, Ljava/lang/StringBuilder;
    const-string/jumbo v5, "\u751f\u6210\u516d\u4f4d\u6570\u4e4b\u524dserverTime\u4e3a\uff1a"
    invoke-direct { v3, v5 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    move-wide/from16 v0, v18
    invoke-virtual { v3, v0, v1 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    move-object/from16 v0, p0
    invoke-virtual { v0, v3 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    new-instance v3, Ljava/lang/StringBuilder;
    const-string/jumbo v5, "\u751f\u6210\u516d\u4f4d\u6570\u4e4b\u524dinterval\u4e3a\uff1a"
    invoke-direct { v3, v5 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    move-wide/from16 v0, v20
    invoke-virtual { v3, v0, v1 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    move-object/from16 v0, p0
    invoke-virtual { v0, v3 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    new-instance v3, Ljava/lang/StringBuilder;
    const-string/jumbo v5, "\u4ea7\u751fOTP\u7684\u516d\u4f4d\u6570\u662f\uff1a"
    invoke-direct { v3, v5 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    move-object/from16 v0, p0
    invoke-virtual { v0, v3 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    :L19
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    invoke-direct { v0, v2, v4, v1 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->a(Ljava/lang/String;[BLjava/lang/String;)V
    :L20
    goto/16 :L1
    :L21
    move-exception v2
    const-string/jumbo v3, "\u672c\u5730\u751f\u6210OTP\uff0c6\u4f4d\u6570\u5b57\u5f02\u5e38"
    move-object/from16 v0, p0
    invoke-virtual { v0, v3 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    invoke-static { }, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    move-result-object v3
    const-string/jumbo v4, "StackTrace"
    invoke-interface { v3, v4, v2 }, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static { }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->isDelSEDecodeEndBehaviour()Z
    move-result v2
    if-nez v2, :L22
    invoke-virtual/range { p0 .. p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    move-result-object v2
    invoke-interface { v2 }, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;
    move-result-object v2
    sget-object v3, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;
    const-string/jumbo v4, "kf"
    const-string/jumbo v5, "\u751f\u6210otp\u5f02\u5e38"
    const/4 v6, 0
    const/4 v7, 0
    const/4 v8, 0
    const/4 v9, 0
    const-string/jumbo v10, "SE"
    const-string/jumbo v11, ""
    invoke-virtual/range { p0 .. p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    move-result-object v12
    invoke-virtual { v12 }, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;
    move-result-object v12
    const-string/jumbo v13, ""
    const/4 v14, 5
    new-array v14, v14, [Ljava/lang/String;
    const/4 v15, 0
    const-string/jumbo v16, "kf"
    aput-object v16, v14, v15
    const/4 v15, 1
    const-string/jumbo v16, "SEDecodeEnd"
    aput-object v16, v14, v15
    const/4 v15, 2
    const-string/jumbo v16, ""
    aput-object v16, v14, v15
    const/4 v15, 3
    const-string/jumbo v16, "n"
    aput-object v16, v14, v15
    const/4 v15, 4
    const-string/jumbo v16, "alipayclient"
    aput-object v16, v14, v15
    invoke-static/range { v2 .. v14 }, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :L22
    const/4 v2, 0
    const/4 v3, 0
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    invoke-direct { v0, v2, v3, v1 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->a(Ljava/lang/String;[BLjava/lang/String;)V
    const/4 v2, 0
    goto/16 :L1
    :L23
    move-exception v2
    :L24
    invoke-static { }, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    move-result-object v3
    const-string/jumbo v5, "StackTrace"
    invoke-interface { v3, v5, v2 }, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    goto/16 :L15
    :L25
    move-exception v3
    invoke-static { }, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    move-result-object v5
    const-string/jumbo v6, "StackTrace"
    invoke-interface { v5, v6, v3 }, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :L26
    goto/16 :L19
    :L27
    move-wide/from16 v18, v2
    goto/16 :L12
    :L28
    move-wide/from16 v20, v2
    goto/16 :L11
    :L29
    move-object v4, v2
    goto/16 :L10
    :L30
    move-object/from16 v2, v16
    goto/16 :L7
    :L31
    move-object v5, v2
    move-object v15, v3
    goto/16 :L4
.end method

.method public getSe()Lcom/alipay/mobile/security/senative/SE;
    .registers 2
    iget-object v0, p0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->d:Lcom/alipay/mobile/security/senative/SE;
    return-object v0
.end method

.method public getServerTimeDiff()Ljava/lang/String;
    .catch Ljava/lang/Exception; { :L0 .. :L1 } :L1
    .catch Ljava/lang/Exception; { :L5 .. :L7 } :L1
    .registers 7
    const-string/jumbo v0, "getServerTimeDiff from newFacePayOtpSharedDataStore"
    invoke-virtual { p0, v0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    :L0
    invoke-static { }, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    move-result-object v0
    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;
    invoke-virtual { v1 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v1
    invoke-interface { v0, v1 }, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;
    const-string/jumbo v1, "OtpSvrTimeUseOldService"
    invoke-virtual { v0, v1 }, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    invoke-static { }, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    move-result-object v1
    const-string/jumbo v2, "OtpManager"
    new-instance v3, Ljava/lang/StringBuilder;
    const-string/jumbo v4, "get config switch of OTP_SVR_TIME_USE_OLD_SERVICE = "
    invoke-direct { v3, v4 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-interface { v1, v2, v3 }, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    const-string/jumbo v1, "YES"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L2
    invoke-static { }, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    move-result-object v0
    const-class v1, Lcom/alipay/mobile/framework/service/common/TimeService;
    invoke-virtual { v1 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v1
    invoke-interface { v0, v1 }, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/mobile/framework/service/common/TimeService;
    if-nez v0, :L4
    new-instance v0, Ljava/lang/Exception;
    const-string/jumbo v1, "time service is null"
    invoke-direct { v0, v1 }, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
    throw v0
    :L1
    move-exception v0
    invoke-static { }, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    move-result-object v1
    const-string/jumbo v2, "OtpManager"
    new-instance v3, Ljava/lang/StringBuilder;
    const-string/jumbo v4, "get server time service exception "
    invoke-direct { v3, v4 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-interface { v1, v2, v0 }, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :L2
    invoke-static { }, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    move-result-object v0
    const-string/jumbo v1, "OtpManager"
    const-string/jumbo v2, "roll back to old interface"
    invoke-interface { v0, v1, v2 }, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    iget-object v0, p0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->e:Landroid/content/Context;
    const-string/jumbo v1, "timedeff"
    const-string/jumbo v2, "newFacePayOtpSharedDataStore"
    invoke-virtual { p0, v0, v1, v2 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getTimeDiff(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    :L3
    return-object v0
    :L4
    const/4 v1, 1
    :L5
    invoke-virtual { v0, v1 }, Lcom/alipay/mobile/framework/service/common/TimeService;->getServerTime(Z)J
    move-result-wide v0
    invoke-static { }, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    move-result-object v2
    const-string/jumbo v3, "OtpManager"
    new-instance v4, Ljava/lang/StringBuilder;
    const-string/jumbo v5, "get server time from framework with value:"
    invoke-direct { v4, v5 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v4, v0, v1 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-interface { v2, v3, v4 }, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    const-wide/16 v2, -1
    cmp-long v2, v0, v2
    if-nez v2, :L6
    new-instance v0, Ljava/lang/Exception;
    const-string/jumbo v1, "server time get -1"
    invoke-direct { v0, v1 }, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
    throw v0
    :L6
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    sub-long/2addr v0, v2
    const-wide/16 v2, 1000
    div-long/2addr v0, v2
    invoke-static { v0, v1 }, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v0
    invoke-static { }, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    move-result-object v1
    const-string/jumbo v2, "OtpManager"
    new-instance v3, Ljava/lang/StringBuilder;
    const-string/jumbo v4, "get timeDiff from framework "
    invoke-direct { v3, v4 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-interface { v1, v2, v3 }, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :L7
    goto :L3
.end method

.method protected getTid()Ljava/lang/String;
    .registers 2
    const-string/jumbo v0, "getTid"
    invoke-virtual { p0, v0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    invoke-virtual { p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getMspDeviceInfoBean()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;
    move-result-object v0
    if-eqz v0, :L1
    invoke-virtual { v0 }, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;
    move-result-object v0
    :L0
    return-object v0
    :L1
    const/4 v0, 0
    goto :L0
.end method

.method protected getTid4Location()Ljava/lang/String;
    .catch Ljava/lang/Exception; { :L0 .. :L1 } :L3
    .registers 4
    const-string/jumbo v0, "getTid"
    invoke-virtual { p0, v0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    invoke-static { }, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    move-result-object v0
    const-class v1, Lcom/alipay/android/app/helper/PayHelperServcie;
    invoke-virtual { v1 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v1
    invoke-interface { v0, v1 }, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;
    move-result-object v0
    check-cast v0, Lcom/alipay/android/app/helper/PayHelperServcie;
    :L0
    invoke-virtual { v0 }, Lcom/alipay/android/app/helper/PayHelperServcie;->loadLocalTid()Lcom/alipay/android/app/helper/Tid;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/android/app/helper/Tid;->getTid()Ljava/lang/String;
    :L1
    move-result-object v0
    :L2
    return-object v0
    :L3
    move-exception v0
    const-string/jumbo v1, "\u8c03\u7528\u79fb\u52a8\u5feb\u6377\u83b7\u53d6tid \u5931\u8d25\uff0c\u53ef\u80fd\u672a\u5b89\u88c5\u6700\u65b0\u79fb\u52a8\u5feb\u6377"
    invoke-virtual { p0, v1 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    invoke-static { }, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    move-result-object v1
    const-string/jumbo v2, "StackTrace"
    invoke-interface { v1, v2, v0 }, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    const/4 v0, 0
    goto :L2
.end method

.method protected getTimeDiff(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .catch Ljava/lang/Exception; { :L0 .. :L1 } :L5
    .catch Ljava/lang/Exception; { :L3 .. :L4 } :L5
    .registers 8
    const-string/jumbo v1, ""
    :L0
    invoke-static { }, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    move-result-object v0
    const-class v2, Lcom/alipay/mobile/base/config/ConfigService;
    invoke-virtual { v2 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v2
    invoke-interface { v0, v2 }, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;
    if-eqz v0, :L3
    const-string/jumbo v2, "NO"
    const-string/jumbo v3, "OtpSvrTimeUseRpc"
    invoke-virtual { v0, v3 }, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v2, v0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L3
    const-string/jumbo v0, "OtpSvrTimeUseRpc is NO get serviceTimeDiff from sp which is set by report device location"
    invoke-virtual { p0, v0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    iget-object v0, p0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->e:Landroid/content/Context;
    const-string/jumbo v2, "deviceLock"
    const/4 v3, 0
    invoke-virtual { v0, v2, v3 }, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v0
    const-string/jumbo v2, "serverTimeDiff"
    const-string/jumbo v3, ""
    invoke-interface { v0, v2, v3 }, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :L1
    move-result-object v0
    :L2
    new-instance v1, Ljava/lang/StringBuilder;
    const-string/jumbo v2, "timeDiff: "
    invoke-direct { v1, v2 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { p0, v1 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    return-object v0
    :L3
    invoke-static { p1, p2, p3 }, Lcom/alipay/mobile/security/otp/service/OtpShareStore;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :L4
    move-result-object v0
    goto :L2
    :L5
    move-exception v0
    invoke-static { }, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    move-result-object v2
    const-string/jumbo v3, "OtpManager"
    invoke-interface { v2, v3, v0 }, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    move-object v0, v1
    goto :L2
.end method

.method public getUserIndex(Ljava/lang/String;)Lcom/alipay/mobile/security/otp/OtpResult;
    .registers 4
    new-instance v0, Lcom/alipay/mobile/security/otp/OtpResult;
    invoke-direct { v0 }, Lcom/alipay/mobile/security/otp/OtpResult;-><init>()V
    const-string/jumbo v1, "index"
    iput-object v1, v0, Lcom/alipay/mobile/security/otp/OtpResult;->type:Ljava/lang/String;
    invoke-virtual { p0, p1 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getIndex(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    iput-object v1, v0, Lcom/alipay/mobile/security/otp/OtpResult;->value:Ljava/lang/String;
    return-object v0
.end method

.method public getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    .catch Ljava/lang/Exception; { :L0 .. :L3 } :L4
    .registers 5
    const/4 v1, 0
    :L0
    invoke-static { }, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    move-result-object v0
    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    invoke-virtual { v2 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v2
    invoke-interface { v0, v2 }, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;
    move-result-object v0
    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    if-nez v0, :L2
    invoke-static { }, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    move-result-object v0
    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    invoke-virtual { v2 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v2
    invoke-interface { v0, v2 }, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;
    move-result-object v0
    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    if-nez v0, :L2
    move-object v0, v1
    :L1
    return-object v0
    :L2
    invoke-virtual { v0 }, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getLastLoginedUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    :L3
    move-result-object v0
    goto :L1
    :L4
    move-exception v0
    invoke-static { }, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    move-result-object v2
    const-string/jumbo v3, "StackTrace"
    invoke-interface { v2, v3, v0 }, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    move-object v0, v1
    goto :L1
.end method

.method public initIndex()V
    .registers 4
    invoke-static { }, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    move-result-object v0
    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;
    invoke-virtual { v1 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v1
    invoke-interface { v0, v1 }, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;
    if-eqz v0, :L1
    const-string/jumbo v1, "NO"
    const-string/jumbo v2, "OtpSvrTimeUseRpc"
    invoke-virtual { v0, v2 }, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L1
    const-string/jumbo v0, "OtpSvrTimeUseRpc is NO initIndex"
    invoke-virtual { p0, v0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    :L0
    return-void
    :L1
    const-string/jumbo v0, "initIndex"
    invoke-virtual { p0, v0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    new-instance v0, Lcom/alipay/mobile/security/otp/service/a;
    invoke-direct { v0, p0 }, Lcom/alipay/mobile/security/otp/service/a;-><init>(Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;)V
    invoke-static { v0 }, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V
    goto :L0
.end method

.method public initSeed()V
    .registers 2
    new-instance v0, Lcom/alipay/mobile/security/otp/service/b;
    invoke-direct { v0, p0 }, Lcom/alipay/mobile/security/otp/service/b;-><init>(Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;)V
    invoke-static { v0 }, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V
    return-void
.end method

.method protected intArrayToString([I)Ljava/lang/String;
    .registers 6
    new-instance v1, Ljava/lang/StringBuffer;
    invoke-direct { v1 }, Ljava/lang/StringBuffer;-><init>()V
    array-length v2, p1
    const/4 v0, 0
    :L0
    if-lt v0, v2, :L1
    invoke-virtual { v1 }, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
    :L1
    aget v3, p1, v0
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
    add-int/lit8 v0, v0, 1
    goto :L0
.end method

.method l(Ljava/lang/String;)V
    .registers 2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .registers 2
    return-void
.end method

.method protected recodeLog(Lcom/alipay/mobilesecurity/core/model/mobiletoken/InitDeviceRes;Ljava/lang/String;Ljava/lang/String;)V
    .catch Ljava/lang/Exception; { :L0 .. :L4 } :L5
    .catch Ljava/lang/Exception; { :L6 .. :L8 } :L5
    .registers 20
    :L0
    invoke-virtual/range { p1 .. p1 }, Lcom/alipay/mobilesecurity/core/model/mobiletoken/InitDeviceRes;->getSeed()Ljava/lang/String;
    move-result-object v4
    if-eqz v4, :L7
    move-object/from16 v0, p0
    invoke-virtual { v0, v4 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->checkHEX(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L2
    invoke-virtual/range { p0 .. p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    move-result-object v1
    invoke-interface { v1 }, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;
    move-result-object v1
    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;
    const-string/jumbo v3, "kf"
    new-instance v5, Ljava/lang/StringBuilder;
    const-string/jumbo v6, "\u83b7\u53d6\u670d\u52a1\u7aef\u79cd\u5b50\u4e0d\u662f\u5341\u516d\u8fdb\u5236\u6570\u636e  seed="
    invoke-direct { v5, v6 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v5, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    const/4 v5, 0
    const/4 v6, 0
    const/4 v7, 0
    const/4 v8, 0
    const-string/jumbo v9, "SE"
    const-string/jumbo v10, ""
    invoke-virtual/range { p0 .. p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    move-result-object v11
    invoke-virtual { v11 }, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;
    move-result-object v11
    const-string/jumbo v12, ""
    const/4 v13, 5
    new-array v13, v13, [Ljava/lang/String;
    const/4 v14, 0
    const-string/jumbo v15, "kf"
    aput-object v15, v13, v14
    const/4 v14, 1
    const-string/jumbo v15, "SEEncryptEnd"
    aput-object v15, v13, v14
    const/4 v14, 2
    const-string/jumbo v15, ""
    aput-object v15, v13, v14
    const/4 v14, 3
    const-string/jumbo v15, "n"
    aput-object v15, v13, v14
    const/4 v14, 4
    const-string/jumbo v15, "alipayclient"
    aput-object v15, v13, v14
    invoke-static/range { v1 .. v13 }, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :L1
    return-void
    :L2
    if-eqz p2, :L3
    const-string/jumbo v1, ""
    move-object/from16 v0, p2
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L6
    :L3
    invoke-virtual/range { p0 .. p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    move-result-object v1
    invoke-interface { v1 }, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;
    move-result-object v1
    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;
    const-string/jumbo v3, "kf"
    new-instance v5, Ljava/lang/StringBuilder;
    const-string/jumbo v6, "\u83b7\u53d6\u670d\u52a1\u7aef\u79cd\u5b50\u52a0\u5bc6\u540e\u4e3a\u7a7a  seed="
    invoke-direct { v5, v6 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v5, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    const/4 v5, 0
    const/4 v6, 0
    const/4 v7, 0
    const/4 v8, 0
    const-string/jumbo v9, "SE"
    const-string/jumbo v10, ""
    invoke-virtual/range { p0 .. p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    move-result-object v11
    invoke-virtual { v11 }, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;
    move-result-object v11
    const-string/jumbo v12, ""
    const/4 v13, 5
    new-array v13, v13, [Ljava/lang/String;
    const/4 v14, 0
    const-string/jumbo v15, "kf"
    aput-object v15, v13, v14
    const/4 v14, 1
    const-string/jumbo v15, "SEEncryptEnd"
    aput-object v15, v13, v14
    const/4 v14, 2
    const-string/jumbo v15, ""
    aput-object v15, v13, v14
    const/4 v14, 3
    const-string/jumbo v15, "n"
    aput-object v15, v13, v14
    const/4 v14, 4
    const-string/jumbo v15, "alipayclient"
    aput-object v15, v13, v14
    invoke-static/range { v1 .. v13 }, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :L4
    goto :L1
    :L5
    move-exception v1
    invoke-static { }, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    move-result-object v2
    const-string/jumbo v3, "StackTrace"
    invoke-interface { v2, v3, v1 }, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    goto :L1
    :L6
    invoke-virtual/range { p0 .. p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    move-result-object v1
    invoke-interface { v1 }, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;
    move-result-object v1
    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;
    const-string/jumbo v3, "kf"
    new-instance v4, Ljava/lang/StringBuilder;
    const-string/jumbo v5, "timeDiff="
    invoke-direct { v4, v5 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual/range { p1 .. p1 }, Lcom/alipay/mobilesecurity/core/model/mobiletoken/InitDeviceRes;->getServerTime()Ljava/lang/String;
    move-result-object v5
    invoke-static { v5 }, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    move-result-wide v5
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v7
    const-wide/16 v9, 1000
    div-long/2addr v7, v9
    sub-long/2addr v5, v7
    invoke-virtual { v4, v5, v6 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    move-result-object v4
    const-string/jumbo v5, " serviceTime="
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-virtual/range { p1 .. p1 }, Lcom/alipay/mobilesecurity/core/model/mobiletoken/InitDeviceRes;->getServerTime()Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    const-string/jumbo v5, " localTime="
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v5
    invoke-virtual { v4, v5, v6 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    const/4 v5, 0
    const/4 v6, 0
    const/4 v7, 0
    const/4 v8, 0
    const-string/jumbo v9, "SE"
    const-string/jumbo v10, ""
    invoke-virtual/range { p0 .. p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    move-result-object v11
    invoke-virtual { v11 }, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;
    move-result-object v11
    const-string/jumbo v12, ""
    const/4 v13, 5
    new-array v13, v13, [Ljava/lang/String;
    const/4 v14, 0
    const-string/jumbo v15, "kf"
    aput-object v15, v13, v14
    const/4 v14, 1
    const-string/jumbo v15, "SEEncryptEnd"
    aput-object v15, v13, v14
    const/4 v14, 2
    const-string/jumbo v15, ""
    aput-object v15, v13, v14
    const/4 v14, 3
    const-string/jumbo v15, "y"
    aput-object v15, v13, v14
    const/4 v14, 4
    const-string/jumbo v15, "alipayclient"
    aput-object v15, v13, v14
    invoke-static/range { v1 .. v13 }, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    goto/16 :L1
    :L7
    invoke-virtual/range { p0 .. p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    move-result-object v1
    invoke-interface { v1 }, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;
    move-result-object v1
    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;
    const-string/jumbo v3, "kf"
    new-instance v4, Ljava/lang/StringBuilder;
    const-string/jumbo v5, "\u83b7\u53d6\u670d\u52a1\u7aef\u79cd\u5b50\u4e3a\u7a7a tid="
    invoke-direct { v4, v5 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    move-object/from16 v0, p3
    invoke-virtual { v4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    const/4 v5, 0
    const/4 v6, 0
    const/4 v7, 0
    const/4 v8, 0
    const-string/jumbo v9, "SE"
    const-string/jumbo v10, ""
    invoke-virtual/range { p0 .. p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    move-result-object v11
    invoke-virtual { v11 }, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;
    move-result-object v11
    const-string/jumbo v12, ""
    const/4 v13, 5
    new-array v13, v13, [Ljava/lang/String;
    const/4 v14, 0
    const-string/jumbo v15, "kf"
    aput-object v15, v13, v14
    const/4 v14, 1
    const-string/jumbo v15, "SEEncryptEnd"
    aput-object v15, v13, v14
    const/4 v14, 2
    const-string/jumbo v15, ""
    aput-object v15, v13, v14
    const/4 v14, 3
    const-string/jumbo v15, "n"
    aput-object v15, v13, v14
    const/4 v14, 4
    const-string/jumbo v15, "alipayclient"
    aput-object v15, v13, v14
    invoke-static/range { v1 .. v13 }, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :L8
    goto/16 :L1
.end method

.method protected requestSeed(Ljava/lang/String;)V
    .catch Lcom/alipay/mobile/common/rpc/RpcException; { :L3 .. :L4 } :L10
    .catch Ljava/lang/Exception; { :L11 .. :L14 } :L15
    .catch Ljava/lang/Exception; { :L16 .. :L17 } :L15
    .registers 12
    const/4 v9, 0
    const/4 v8, 0
    invoke-virtual { p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;
    move-result-object v1
    const-string/jumbo v0, "\u8bf7\u6c42\u670d\u52a1\u7aef\u83b7\u53d6seed"
    invoke-virtual { p0, v0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    new-instance v2, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenReq;
    invoke-direct { v2 }, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenReq;-><init>()V
    invoke-virtual { p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getMspDeviceInfoBean()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;
    move-result-object v3
    if-nez v3, :L7
    const-string/jumbo v0, ""
    :L0
    invoke-virtual { v2, v0 }, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenReq;->setImei(Ljava/lang/String;)V
    if-nez v3, :L8
    const-string/jumbo v0, ""
    :L1
    invoke-virtual { v2, v0 }, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenReq;->setImsi(Ljava/lang/String;)V
    invoke-virtual { v2, p1 }, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenReq;->setTid(Ljava/lang/String;)V
    invoke-virtual { p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v2, v0 }, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenReq;->setLogonId(Ljava/lang/String;)V
    iget-object v0, p0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->e:Landroid/content/Context;
    invoke-virtual { v0 }, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0 }, Lcom/alipay/mobile/common/info/AppInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/AppInfo;
    move-result-object v0
    if-nez v0, :L9
    const-string/jumbo v0, "Android"
    :L2
    invoke-virtual { v2, v0 }, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenReq;->setOsType(Ljava/lang/String;)V
    invoke-static { }, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/common/info/DeviceInfo;->getOsVersion()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v2, v0 }, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenReq;->setOsVersion(Ljava/lang/String;)V
    invoke-static { }, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    move-result-object v0
    const-class v3, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;
    invoke-virtual { v3 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v3
    invoke-interface { v0, v3 }, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;
    move-result-object v0
    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;
    invoke-virtual { v0 }, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;->getCacheLocationInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;
    move-result-object v3
    invoke-virtual { v3 }, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->getCellId()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v2, v3 }, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenReq;->setCellId(Ljava/lang/String;)V
    invoke-virtual { v0 }, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;->getCacheLocationInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;
    move-result-object v3
    invoke-virtual { v3 }, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->getMac()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v2, v3 }, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenReq;->setMac(Ljava/lang/String;)V
    new-instance v3, Ljava/lang/StringBuilder;
    const-string/jumbo v4, "x="
    invoke-direct { v3, v4 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v0 }, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;->getCacheLocationInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;
    move-result-object v4
    invoke-virtual { v4 }, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->getLongitude()Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    const-string/jumbo v4, ",y="
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v0 }, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;->getCacheLocationInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->getLatitude()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v2, v0 }, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenReq;->setLocation(Ljava/lang/String;)V
    :L3
    invoke-virtual { p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getMobileDeviceFacade()Lcom/alipay/mobilesecurity/biz/gw/service/authcenter/MobileDeviceFacade;
    move-result-object v0
    invoke-interface { v0, v2 }, Lcom/alipay/mobilesecurity/biz/gw/service/authcenter/MobileDeviceFacade;->initDevice(Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenReq;)Lcom/alipay/mobilesecurity/core/model/mobiletoken/InitDeviceRes;
    :L4
    move-result-object v0
    if-eqz v0, :L5
    invoke-virtual { v0 }, Lcom/alipay/mobilesecurity/core/model/mobiletoken/InitDeviceRes;->isSuccess()Z
    move-result v2
    if-nez v2, :L11
    :L5
    const-string/jumbo v0, "initDeviceRes is null"
    invoke-virtual { p0, v0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    sget-object v0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->g:Ljava/lang/String;
    sget-object v1, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->i:Ljava/lang/String;
    invoke-static { v0, v1, v8, v8, v8 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-virtual { p0, v9 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->sendSeedInitMessage(Z)V
    :L6
    return-void
    :L7
    invoke-virtual { v3 }, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImei()Ljava/lang/String;
    move-result-object v0
    goto/16 :L0
    :L8
    invoke-virtual { v3 }, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImsi()Ljava/lang/String;
    move-result-object v0
    goto/16 :L1
    :L9
    invoke-virtual { v0 }, Lcom/alipay/mobile/common/info/AppInfo;->getProductID()Ljava/lang/String;
    move-result-object v0
    goto/16 :L2
    :L10
    move-exception v0
    new-instance v1, Ljava/lang/StringBuilder;
    const-string/jumbo v2, "\u8bf7\u6c42\u670d\u52a1\u5668\u751f\u6210\u79cd\u5b50\u5f02\u5e38:"
    invoke-direct { v1, v2 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v0 }, Lcom/alipay/mobile/common/rpc/RpcException;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p0, v0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    sget-object v0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->g:Ljava/lang/String;
    sget-object v1, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->h:Ljava/lang/String;
    invoke-static { v0, v1, v8, v8, v8 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-virtual { p0, v9 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->sendSeedInitMessage(Z)V
    goto :L6
    :L11
    invoke-virtual { v0 }, Lcom/alipay/mobilesecurity/core/model/mobiletoken/InitDeviceRes;->getServerTime()Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    move-result-wide v2
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v4
    const-wide/16 v6, 1000
    div-long/2addr v4, v6
    sub-long/2addr v2, v4
    invoke-static { v2, v3 }, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    move-result-object v2
    iget-object v3, p0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->e:Landroid/content/Context;
    const-string/jumbo v4, "interval"
    invoke-virtual { v0 }, Lcom/alipay/mobilesecurity/core/model/mobiletoken/InitDeviceRes;->getInterval()Ljava/lang/String;
    move-result-object v5
    const-string/jumbo v6, "newFacePayOtpSharedDataStore"
    invoke-static { v3, v4, v5, v6 }, Lcom/alipay/mobile/security/otp/service/OtpShareStore;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    iget-object v3, p0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->e:Landroid/content/Context;
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-static { v1 }, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v5
    invoke-direct { v4, v5 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    const-string/jumbo v5, "+"
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-virtual { v4, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v0 }, Lcom/alipay/mobilesecurity/core/model/mobiletoken/InitDeviceRes;->getIndex()Ljava/lang/String;
    move-result-object v5
    const-string/jumbo v6, "newFacePayOtpSharedDataStore"
    invoke-static { v3, v4, v5, v6 }, Lcom/alipay/mobile/security/otp/service/OtpShareStore;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    iget-object v3, p0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->e:Landroid/content/Context;
    const-string/jumbo v4, "timedeff"
    const-string/jumbo v5, "newFacePayOtpSharedDataStore"
    invoke-static { v3, v4, v2, v5 }, Lcom/alipay/mobile/security/otp/service/OtpShareStore;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    iget-object v3, p0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->e:Landroid/content/Context;
    const-string/jumbo v4, "deviceLock"
    const/4 v5, 0
    invoke-virtual { v3, v4, v5 }, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v3
    invoke-interface { v3 }, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v3
    const-string/jumbo v4, "serverTimeDiff"
    invoke-interface { v3, v4, v2 }, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    move-result-object v2
    invoke-interface { v2 }, Landroid/content/SharedPreferences$Editor;->commit()Z
    new-instance v2, Ljava/lang/StringBuilder;
    const-string/jumbo v3, "initDeviceRes.getSeed()="
    invoke-direct { v2, v3 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v0 }, Lcom/alipay/mobilesecurity/core/model/mobiletoken/InitDeviceRes;->getSeed()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string/jumbo v3, " String.valueOf(tid.hashCode())="
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { p1 }, Ljava/lang/String;->hashCode()I
    move-result v3
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { p0, v2 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    invoke-virtual { v0 }, Lcom/alipay/mobilesecurity/core/model/mobiletoken/InitDeviceRes;->getSeed()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { p1 }, Ljava/lang/String;->hashCode()I
    move-result v3
    invoke-static { v3 }, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v3
    invoke-static { v2, v3 }, Lcom/alipay/mobile/security/otp/service/OtpSeedCryptor;->encryptOtpSeed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { p0, v0, v2, p1 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->recodeLog(Lcom/alipay/mobilesecurity/core/model/mobiletoken/InitDeviceRes;Ljava/lang/String;Ljava/lang/String;)V
    if-eqz v2, :L16
    invoke-virtual { v2 }, Ljava/lang/String;->length()I
    move-result v3
    if-lez v3, :L16
    iget-object v3, p0, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->e:Landroid/content/Context;
    const-string/jumbo v4, "newFacePayOtpSharedDataStore"
    invoke-static { v3, p1, v2, v4 }, Lcom/alipay/mobile/security/otp/service/OtpShareStore;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    const/4 v3, 1
    invoke-virtual { p0, v3 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->sendSeedInitMessage(Z)V
    new-instance v3, Ljava/lang/StringBuilder;
    const-string/jumbo v4, "\u4fdd\u5b58seed\u6210\u529f  seed:"
    invoke-direct { v3, v4 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v0 }, Lcom/alipay/mobilesecurity/core/model/mobiletoken/InitDeviceRes;->getSeed()Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    const-string/jumbo v4, " index:"
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v0 }, Lcom/alipay/mobilesecurity/core/model/mobiletoken/InitDeviceRes;->getIndex()Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    const-string/jumbo v4, " INTERVAL: "
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v0 }, Lcom/alipay/mobilesecurity/core/model/mobiletoken/InitDeviceRes;->getInterval()Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { p0, v3 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    new-instance v3, Ljava/lang/StringBuilder;
    const-string/jumbo v4, "\u79cd\u5b50\u52a0\u5bc6\u6210\u529f encryptedSeed="
    invoke-direct { v3, v4 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { p0, v2 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    :L12
    invoke-virtual { v0 }, Lcom/alipay/mobilesecurity/core/model/mobiletoken/InitDeviceRes;->getSeed()Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z
    move-result v2
    if-nez v2, :L13
    invoke-virtual { v0 }, Lcom/alipay/mobilesecurity/core/model/mobiletoken/InitDeviceRes;->getIndex()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L6
    :L13
    invoke-direct { p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->a()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p0, v1 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getIndex(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getServerTimeDiff()Ljava/lang/String;
    move-result-object v2
    sget-object v3, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->g:Ljava/lang/String;
    sget-object v4, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->i:Ljava/lang/String;
    invoke-static { v3, v4, v0, v1, v2 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :L14
    goto/16 :L6
    :L15
    move-exception v0
    const-string/jumbo v1, "\u83b7\u53d6seed\u5f02\u5e38"
    invoke-virtual { p0, v1 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    sget-object v1, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->g:Ljava/lang/String;
    sget-object v2, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->k:Ljava/lang/String;
    invoke-static { v1, v2, v8, v8, v8 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-virtual { p0, v9 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->sendSeedInitMessage(Z)V
    invoke-static { }, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    move-result-object v1
    const-string/jumbo v2, "StackTrace"
    invoke-interface { v1, v2, v0 }, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    goto/16 :L6
    :L16
    sget-object v2, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->g:Ljava/lang/String;
    sget-object v3, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->j:Ljava/lang/String;
    const/4 v4, 0
    const/4 v5, 0
    const/4 v6, 0
    invoke-static { v2, v3, v4, v5, v6 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    const/4 v2, 0
    invoke-virtual { p0, v2 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->sendSeedInitMessage(Z)V
    const-string/jumbo v2, "seed \u52a0\u5bc6\u5931\u8d25"
    invoke-virtual { p0, v2 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    :L17
    goto :L12
.end method

.method protected sendSeedInitMessage(Z)V
    .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
    .registers 6
    :L0
    new-instance v0, Landroid/content/Intent;
    const-string/jumbo v1, "seed_init_complete"
    invoke-direct { v0, v1 }, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    const-string/jumbo v1, "seed_init_complete_falg"
    invoke-virtual { v0, v1, p1 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    invoke-virtual { p0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    move-result-object v1
    invoke-interface { v1 }, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;
    move-result-object v1
    invoke-static { v1 }, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
    move-result-object v1
    invoke-virtual { v1, v0 }, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    new-instance v0, Ljava/lang/StringBuilder;
    const-string/jumbo v1, "\u53d1\u9001seed\u83b7\u53d6\u6d88\u606f  resFlag="
    invoke-direct { v0, v1 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p0, v0 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    :L1
    return-void
    :L2
    move-exception v0
    invoke-static { }, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    move-result-object v1
    const-string/jumbo v2, "\u53d1\u9001seed\u83b7\u53d6\u5931\u8d25"
    invoke-static { v0 }, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v3
    invoke-interface { v1, v2, v3 }, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static { }, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    move-result-object v1
    const-string/jumbo v2, "StackTrace"
    invoke-interface { v1, v2, v0 }, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    goto :L1
.end method

.method public sendTodoMessage()V
    .registers 2
    new-instance v0, Lcom/alipay/mobile/security/otp/service/c;
    invoke-direct { v0, p0 }, Lcom/alipay/mobile/security/otp/service/c;-><init>(Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;)V
    invoke-static { v0 }, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V
    return-void
.end method

.method protected stringToFormatStr(Ljava/lang/String;)Ljava/lang/String;
    .catch Ljava/lang/Exception; { :L0 .. :L3 } :L4
    .registers 6
    const/4 v0, 0
    if-nez p1, :L2
    :L0
    const-string/jumbo v1, "temp is null"
    invoke-virtual { p0, v1 }, Lcom/alipay/mobile/security/otp/service/OtpManagerImpl;->l(Ljava/lang/String;)V
    move-object p1, v0
    :L1
    return-object p1
    :L2
    if-eqz p1, :L1
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result v1
    const/16 v2, 8
    if-lt v1, v2, :L1
    new-instance v1, Ljava/lang/StringBuilder;
    const/4 v2, 0
    const/4 v3, 4
    invoke-virtual { p1, v2, v3 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v2
    invoke-direct { v1, v2 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    const-string/jumbo v2, "-"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result v2
    add-int/lit8 v2, v2, -4
    invoke-virtual { p1, v2 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :L3
    move-result-object p1
    goto :L1
    :L4
    move-exception v1
    invoke-static { }, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    move-result-object v2
    const-string/jumbo v3, "StackTrace"
    invoke-interface { v2, v3, v1 }, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    move-object p1, v0
    goto :L1
.end method
