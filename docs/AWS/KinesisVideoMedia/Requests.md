## Module AWS.KinesisVideoMedia.Requests

#### `getMedia`

``` purescript
getMedia :: forall eff. Service -> GetMediaInput -> Aff (exception :: EXCEPTION | eff) GetMediaOutput
```

<p> Use this API to retrieve media content from a Kinesis video stream. In the request, you identify stream name or stream Amazon Resource Name (ARN), and the starting chunk. Kinesis Video Streams then returns a stream of chunks in order by fragment number.</p> <note> <p> You must first call the <code>GetDataEndpoint</code> API to get an endpoint to which you can then send the <code>GetMedia</code> requests. </p> </note> <p>When you put media data (fragments) on a stream, Kinesis Video Streams stores each incoming fragment and related metadata in what is called a "chunk." For more information, see . The <code>GetMedia</code> API returns a stream of these chunks starting from the chunk that you specify in the request. </p> <p>The following limits apply when using the <code>GetMedia</code> API:</p> <ul> <li> <p>A client can call <code>GetMedia</code> up to five times per second per stream. </p> </li> <li> <p>Kinesis Video Streams sends media data at a rate of up to 25 megabytes per second (or 200 megabits per second) during a <code>GetMedia</code> session. </p> </li> </ul>


