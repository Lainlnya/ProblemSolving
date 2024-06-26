import java.io.*;
import java.util.*;
public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st;
        Deque<Integer> deque = new ArrayDeque<>();
        int total = Integer.parseInt(br.readLine());
        StringBuilder sb = new StringBuilder();

        for (int i = 0; i < total; i++) {
            st = new StringTokenizer(br.readLine());
            String tell = st.nextToken();

            switch (tell) {
                case "push_back":
                    deque.addLast(Integer.parseInt(st.nextToken()));
                    break;
                case "push_front":
                    deque.addFirst(Integer.parseInt(st.nextToken()));
                    break;
                case "pop_front":
                    if (deque.isEmpty()) {
                        sb.append("-1\n");
                    } else sb.append(deque.pollFirst() + "\n");
                    break;
                case "pop_back":
                    if (deque.isEmpty()) {
                        sb.append("-1\n");
                    } else sb.append(deque.pollLast() + "\n");
                    break;
                case "size":
                    sb.append(deque.size() + "\n");
                    break;
                case "empty":
                    if (deque.isEmpty()) sb.append(1 + "\n");
                    else sb.append(0 + "\n");
                    break;
                case "front":
                    if (deque.isEmpty()) sb.append(-1 + "\n");
                    else sb.append(deque.getFirst() + "\n");
                    break;
                case "back":
                    if (deque.isEmpty()) sb.append(-1 + "\n");
                    else sb.append(deque.getLast() + "\n");
                    break;
            }
        }
        System.out.println(sb);
    }
}
